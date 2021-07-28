.data

p2PDORA: .long 0x400FF000

p2PDORB: .long 0x400FF040

off: .long 0xFFFFFFFF    //0x0
red: .long 0xFFFBFFFF  //0x40000
blue: .long 0xFFFFDFFF   //0x2000
green: .long 0xFFF7FFFF    //80000
redAndGreen: .long 0xFFF3FFFF  //0xC0000
clockCycles: .long 0x2DC6C0

.text
.global johnson
.type johnson function

johnson:
LDR r0,=p2PDORA
LDR r0,[r0]
LDR r1,=p2PDORB
LDR r1,[r1]

MOVS r7,#0
MOVS r6,#0

begin:
LDR r2,=clockCycles  //limite
LDR r2,[r2]

inicioFor:
SUB r2,#1
BNE inicioFor
//fin for
CMP r6,#1
BEQ bounce
LDR r2,= red
LDR r2, [r2]
LDR r3,= green
LDR r3, [r3]
LDR r4,= blue
LDR r4, [r4]
LDR r5,= redAndGreen
LDR r5, [r5]
LDR r6,= off
LDR r6, [r6]
STR r6,[r0]
STR r6,[r1]
ADD r7, #1

CMP r7,#1
BEQ state1
CMP r7,#2
BEQ state2
CMP r7,#3
BEQ state3
CMP r7,#4
BEQ state4
CMP r7,#5
BEQ state5
CMP r7,#6
MOVS r7,#0
BEQ state6

state1:
STR r6,[r0] //Todos apagados
STR r6,[r1] //Todos apagados
B begin
state2:
STR r2,[r1] //rojo enciende
B begin
state3:
STR r5,[r1] // prende amarillo(Rojo y verde)
B begin
state4: //blanco
STR r4,[r0] //azul enciende
STR r5,[r1] // prende amarillo (Rojo y verde)
B begin
state5:
STR r3,[r1] //verde enciende
STR r4,[r0] //azul enciende
B begin
state6:
STR r4,[r0] //azul enciende
B begin
