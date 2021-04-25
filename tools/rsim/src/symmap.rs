use std::io;
use std::collections::HashMap;
use std::fmt;
use serde::Deserialize;
use serde_yaml;

pub struct SymMap {
    labels: Vec<(Symbol, u16)>,
    lines: Vec<((String, u32), u16)>,
}

#[derive(Clone, Debug)]
pub enum Symbol {
    Global(String),
    Local(String, String)
}

#[derive(Debug)]
pub enum SymMapLoadError {
    IoError(io::Error),
    ParseError(serde_yaml::Error)
}

impl From<io::Error> for SymMapLoadError {
    fn from(error: io::Error) -> Self {
        SymMapLoadError::IoError(error)
    }
}

impl From<serde_yaml::Error> for SymMapLoadError {
    fn from(error: serde_yaml::Error) -> Self {
        SymMapLoadError::ParseError(error)
    }
}

impl fmt::Display for Symbol {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Symbol::Global(label) => write!(f, "{}", label),
            Symbol::Local(file, label) => write!(f, "{} ({})", label, file)
        }
    }
}

#[derive(Debug, Deserialize)]
struct SymMapRepr {
    labels: HashMap<Option<String>, HashMap<String, u16>>,
    lines: HashMap<String, HashMap<u32, u16>>
}

impl SymMap {
    pub fn load<T: io::Read>(f: &mut T) -> Result<SymMap, SymMapLoadError> {
        let mut result = SymMap{
            labels: Vec::new(),
            lines: Vec::new()
        };

        let de: SymMapRepr = serde_yaml::from_reader(f)?;

        for (file, symbols) in de.labels {
            for (symbol, address) in symbols {
                let sym = match file {
                    Some(ref f) => Symbol::Local(f.clone(), symbol),
                    None => Symbol::Global(symbol)
                };
                result.labels.push((sym, address));
            }
        }

        for (file, lines) in de.lines {
            for (line, address) in lines {
                result.lines.push(((file.clone(), line), address));
            }
        }

        result.labels.sort_unstable_by(|(_,a), (_,b)| a.cmp(b));
        result.lines.sort_unstable_by(|(_,a), (_,b)| a.cmp(b));
        Ok(result)
    }

    pub fn find_symbol(&self, name: &str) -> Vec<(Symbol, u16)> {
        self.labels.iter()
            .filter(|(sym, _)|
                match sym {
                    Symbol::Global(n) => n == name,
                    Symbol::Local(_, n) => n == name
                })
            .map(|(s,a)| (s.clone(), *a))
            .collect()
    }

    pub fn associate_address(&self, address: u16) -> Option<(Symbol, u16)> {
        match self.labels.binary_search_by(|(_,a)| a.cmp(&address)) {
            Ok(n) => {
                let (name, _) = &self.labels[n];
                Some((name.clone(), 0))
            },
            Err(0) => None,
            Err(n) => {
                let (name, sym_addr) = &self.labels[n - 1];
                Some((name.clone(), address - sym_addr))
            }
        }
    }

    pub fn associate_line(&self, address: u16) -> Option<(&String, u32)> {
        match self.lines.binary_search_by(|(_,a)| a.cmp(&address)) {
            Ok(n) => {
                let ((file, line), _) = &self.lines[n];
                Some((file, *line))
            }
            _ => None
        }
    }
}
