#!/usr/bin/env python3
import argparse
import re
import sys
import readline
from machine import Machine
from memory import Memory
from keyboard import Keyboard
from lcd16x2 import Display

def load(file):
    ba = file.read()
    if len(ba) != 32768:
        raise ValueError("Wrong program file size (must be 32768)")
    return list(ba)

def loadLabels(file):
    r = re.compile(r"(\w+)\s*=\s*0x([0-9a-f]+)", re.I)
    labels = {}
    for line in file:
        m = r.match(line)
        if m is None:
            raise ValueError("Map file error: '{}'".format(line))
        labels[m.group(1)] = int(m.group(2), 16)
    return labels

def loop(program, labels):
    rlabels = {labels[k]: k for k in labels}
    labelAddresses = sorted(rlabels.keys())
    keyboard = Keyboard()
    display = Display()
    memory = Memory(program, keyboard, display)
    memory.setVerbose(False)
    m = Machine(memory)
    newState = True
    while True:
        if newState:
            la = 0
            for address in labelAddresses:
                if address > m.ip:
                    break
                la = address
            if la in rlabels:
                print("{} + 0x{:X}:".format(rlabels[la], m.ip - la))
            m.printState()
            newState = False
        try:
            line = input("> ")
        except EOFError:
            return
        tokens = line.split(' ')
        cmd = tokens[0]
        if cmd == 's' or cmd == 'step' or cmd == '':
            m.step()
            newState = True
        elif cmd == 'r' or cmd == 'run' or cmd == 'u' or cmd == 'until':
            until = None
            if cmd[0] == 'u':
                until = eval(tokens[1], labels)
            reason, number = m.run(until)
            newState = True
            print("{} {}".format(reason, number))
            display.print()
            display.resetText()
        elif cmd == 'b' or cmd == 'break':
            try:
                address = m.ip
                if len(tokens) > 1:
                    address = eval(tokens[1], labels)
                n = m.addBreakpoint(address)
                print("Breakpoint {} at 0x{:04X}".format(n, address))
            except NameError as e:
                print("Unknown label")
        elif cmd == 'w' or cmd == 'watch':
            try:
                address = eval(tokens[1], labels)
                n = memory.watch(address)
                print("Watchpoint {} at 0x{:04X}".format(n, address))
            except NameError:
                print("Unknown label")
        elif cmd == 'p' or cmd == 'print':
            fmt = "b"
            addr = tokens[1]
            if len(tokens) > 2:
                fmt = tokens[1]
                addr = tokens[2]
            try:
                addr = eval(addr, labels)
                memory.printValue(addr, fmt)
            except NameError:
                print("Unknown label")
        elif cmd == 's' or cmd == 'set':
            fmt = "b"
            addr = tokens[1]
            value = tokens[2]
            if len(tokens) > 3:
                fmt = tokens[1]
                addr = tokens[2]
                value = tokens[3]
            try:
                addr = eval(addr, labels)
            except NameError:
                print("Unknown label")
            value = int(value)
            memory.set(addr, value & 0xff, False)
            if fmt != "b":
                memory.set(addr + 1, (value >> 8) & 0xff, False)
                if fmt != "w":
                    memory.set(addr + 2, (value >> 16) & 0xff, False)
                    memory.set(addr + 3, (value >> 24) & 0xff, False)
                    if fmt != "d":
                        memory.set(addr + 4, (value >> 32) & 0xff, False)
                        memory.set(addr + 5, (value >> 40) & 0xff, False)
                        memory.set(addr + 6, (value >> 48) & 0xff, False)
                        memory.set(addr + 7, (value >> 56) & 0xff, False)
            print("Set [0x{:04X}] <- {}".format(addr, value))
        elif cmd == 'protect_rom':
            if len(tokens) > 1:
                value = bool(int(tokens[1]))
                memory.protectRom = value
            print("ROM write protection is {}".format("ON" if memory.protectRom else "OFF"))
        elif cmd == 'press':
            if len(tokens) == 3:
                row = int(tokens[1])
                col = int(tokens[2])
                keyboard.press(row, col)
                print("Pressed {},{}".format(row, col))
            elif len(tokens) == 1:
                keyboard.release()
                print("Released")
            else:
                print("Either two args or no args")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Simulator')
    parser.add_argument('file', type=argparse.FileType("rb"), help='program file')
    parser.add_argument('mapfile', type=argparse.FileType("r"), help='label map file')
    args = parser.parse_args()

    # try:
    program = load(args.file)
    labels = loadLabels(args.mapfile)
    loop(program, labels)
    # except Exception as e:
    #     print(e)
    #     sys.exit(1)
