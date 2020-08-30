#!/usr/bin/python
#Title: Assembler
#Date:04/09/2015
#Author:Adithya Selvaprithiviraj
import sys
from asmsupport import*

#filename=sys.argv[1]

atable, ltable, ctable = {}, {}, {}

def clean_file(input_file):
    k=open(input_file)
    k_lines= k.readlines()
    k_lines=map(decomment,k_lines)
    k_lines=[i.strip() for i in [x for x in k_lines]]
    k_lines=filter(lambda x:x != '',k_lines)
    return k_lines

def final_list(a):
    final=[]

    for i in a:
        if is_a_command(i):
            final.append(atable[i])
        elif is_c_command(i):
            final.append(ctable[i])

    return final

def makeltable(a):
    x=0
    for i in a:
        x +=1
        if is_l_command(i):
            x -= 1
            ltable[i[1:-1]]= zero_pad(x)

def makeatable(a):
    start=16
    for i in a:
        if is_a_command(i):
            val = i[1:]
            if check_int(val) is not None:
                atable[i]= zero_pad(int(val))
            elif val in predef_table.keys():
                atable[i]=zero_pad(predef_table[val])
            elif val in ltable.keys():
                atable[i]=ltable[val]
            elif i in atable.keys():
                continue
            else:
                atable[i]=zero_pad(start)
                start += 1

def makectable(a):
    for i in a:
        semi=i.find(';')
        equa=i.find("=")

        if equa != -1 and semi != -1:
            dest=i[:equa]
            comp=i[equa+1:semi]
            jump=i[semi+1:]
            abit= set_abit(comp)
            ctable[i]="111" +abit+ comp_table[comp] +dest_table[dest] + jmp_table[jump]

        if equa == -1 and semi != -1:
            dest='null'
            comp=i[:semi]
            jump=i[semi+1:]
            abit= set_abit(comp)
            ctable[i]="111" +abit+ comp_table[comp] +dest_table[dest] + jmp_table[jump]

        if equa != -1 and semi == -1:
            dest=i[:equa]
            comp=i[equa+1:]
            jump='null'
            abit= set_abit(comp)
            ctable[i]="111" +abit+ comp_table[comp] +dest_table[dest] + jmp_table[jump]

def write_file(a):
    #name=filename[:filename.find('.')]+".hack"
    name="dinoanijump.hack"
    op=open(name,'w')

    for i in a:
        op.write(i+" "+str(int(i,2))+"\n")

    op.write("\n"+str(len(a)))
    op.write("\n[")
    for i in a:
        op.write(str(int(i,2))+",")

    op.write("]")

    op.close()


if __name__ == "__main__":
    
    a=clean_file('dinoanijump.asm')
    makeltable(a)
    makeatable(a)
    makectable(a)

    result=final_list(a)
    write_file(result)

    print("Done")



