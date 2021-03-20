#!/usr/bin/env python3
from abc import ABC, abstractmethod

WATCH_READ = 1
WATCH_WRITE = 2

class MemoryModule(ABC):
    @abstractmethod
    def isAddressHandled(self, address):
        return False

    @abstractmethod
    def set(self, address, value):
        pass

    @abstractmethod
    def get(self, address):
        return 0

CR_ADDRESS = 0xff02

class Memory:
    def __init__(self, rom):
        self.memory = rom + [0] * (65536 - len(rom))
        self.loRam = [0] * 32768
        self.verbose = False
        self.watches = []
        self.reachedWatch = None
        self.protectRom = True
        self.emulateIo = True
        self.emulateCr = True
        self.cr = 0
        self.modules = []

    def registerModule(self, module):
        self.modules += [module]

    def unregisterModule(self, module):
        self.modules.remove(module)

    def setVerbose(self, verbose):
        self.verbose = verbose

    def set(self, address, value, watch=True):
        for module in self.modules:
            if module.isAddressHandled(address):
                module.set(address, value)
        if address < 0x8000 and self.protectRom and not (self.emulateCr and bool(self.cr & 1)):
            return
        if self.verbose:
            print("[0x{:04X}] <- 0x{:02X}".format(address, value))
        if watch:
            self.__checkWatch(address, WATCH_WRITE)
        if self.emulateCr:
            if address == CR_ADDRESS:
                print(f"CR <- 0x{value:02X}")
                self.cr = value
                return
            if address >= 0xa000:
                bit = 3 + (address >> 12) - 0xa
                if not bool(self.cr & (1 << bit)):
                    return
            if address < 0x8000 and bool(self.cr & 1):
                self.loRam[address] = value
                return
        self.memory[address] = value

    def get(self, address):
        self.__checkWatch(address, WATCH_READ)
        for module in self.modules:
            if module.isAddressHandled(address):
                return module.get(address)
        if address >= 0xf000 and self.emulateIo:
            return 0x00
        if self.emulateCr and address < 0x8000 and bool(self.cr & 1):
            return self.loRam[address]
        return self.memory[address]

    def printValue(self, address, fmt, count):
        for i in range(count):
            if fmt == 'b':
                value = self.memory[address]
                print("[0x{0:04X}] = 0x{1:02X} ({1})".format(address, value))
                address += 1
            if fmt == 'w':
                value = self.memory[address] | (self.memory[address + 1] << 8)
                print("[0x{0:04X}] = 0x{1:04X} ({1})".format(address, value))
                address += 2
            elif fmt == 'd':
                value = self.memory[address] | (self.memory[address + 1] << 8) | (self.memory[address + 2] << 16) | (self.memory[address + 3] << 24)
                print("[0x{0:04X}] = 0x{1:08X} ({1})".format(address, value))
                address += 4
            elif fmt == 'q':
                value = self.memory[address] | (self.memory[address + 1] << 8) | (self.memory[address + 2] << 16) | (self.memory[address + 3] << 24) \
                        | (self.memory[address + 4] << 32) | (self.memory[address + 5] << 40) | (self.memory[address + 6] << 48) | (self.memory[address + 7] << 56)
                print("[0x{0:04X}] = 0x{1:016X} ({1})".format(address, value))
                address += 8

    def watch(self, address, mode=WATCH_WRITE):
        self.watches += [(address, mode)]
        return len(self.watches) - 1

    def getReachedWatch(self):
        return self.reachedWatch

    def clearReachedWatch(self):
        self.reachedWatch = None

    def __checkWatch(self, address, mode):
        for i, (watchAddress, watchMode) in enumerate(self.watches):
            if address == watchAddress and bool(mode & watchMode):
                self.reachedWatch = i
                return
