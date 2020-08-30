#!/usr/bin/python
#Title: Support file for assembler
#Date:02/09/2015
#Author:Adithya Selvaprithiviraj

dest_table={
        "null":"000",
        "M":"001",
        "D":"010",
        "MD":"011",
        "A":"100",
        "AM":"101",
        "AD":"110",
        "AMD":"111"       
        }

jmp_table={
        "null":"000",
        "JGT":"001",
        "JEQ":"010",
        "JGE":"011",
        "JLT":"100",
        "JNE":"101",
        "JLE":"110",
        "JMP":"111"
        }

comp_table={
        "0":"101010",
        "1":"111111",
        "-1":"111010",
        "D":"001100",
        "A":"110000",
        "M":"110000",
        "!D":"001101",
        "!A":"110001",
        "!M":"110001",
        "-D":"001111",
        "-A":"110011",
        "-M":"110011",
        "D+1":"011111",
        "A+1":"110111",
        "M+1":"110111",
        "D-1":"001110",
        "A-1":"110010",
        "M-1":"110010",
        "D+A":"000010",
        "D+M":"000010",
        "D-A":"010010",
        "D-M":"010010",
        "A-D":"000111",
        "M-D":"000111",
        "D&A":"000000",
        "D&M":"000000",
        "D|A":"010101",
        "D|M":"010101",
        }

predef_table = {
        "SP" : 0,
        "LCL" : 1,
        "ARG" : 2,
        "THIS" : 3,
        "THAT" : 4,
        "R0" : 0,
        "R1" : 1,
        "R2" : 2,
        "R3" : 3,
        "R4" : 4,
        "R5" : 5,
        "R6" : 6,
        "R7" : 7,
        "R8" : 8,
        "R9" : 9,
        "R10" : 10,
        "R11" : 11,
        "R12" : 12,
        "R13" : 13,
        "R14" : 14,
        "R15" : 15,
        "SCREEN" : 16384,
        "KBD" : 24576
        }

def decomment(line):
    commentpos=line.find("//")
    if commentpos == -1:
        return line
    elif commentpos == 0:
        return ""
    else:
        return line[:(commentpos-1)]


def set_abit(line):
    if line.find("M") == -1:
        return "0"
    else:
        return "1"

def to_binary(x):
    if x>=0:
        return str(bin(x))[2:]
    else:
        return "Error! Still haven't figured out what to do :P!"

def zero_pad(a):
    num=to_binary(a)
    diff=16-len(num)
    pad=""
    for i in range(diff):
        pad += "0"    
    return pad+num

def check_int(k):
    try:
        return int(k,10)
    except ValueError:
        return None


is_l_command= lambda line:line.find("(") != -1  and line.find(")") != -1
is_a_command= lambda line:line.find("@") != -1
is_c_command= lambda line:line.find("@") == -1 and line.find("(") == -1
