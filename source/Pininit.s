.data
p2SIMS: .long 0x40048038
v2SIMS: .long 0x600

p2PCRRed: .long 0x4004A048
v2PCRRed: .long 0x100

p2PCRBlue: .long 0x40049034
v2PCRBlue: .long 0x100

p2PCRGreen: .long 0x4004A04C
v2PCRGreen: .long 0x100

p2PDDRA: .long 0x400FF014
v2PDDRA: .long 0x2000

p2PDDRB: .long 0x400FF054
v2PDDRB: .long 0xC0000

p2PDORA: .long 0x400FF000
v2PDORA: .long 0x0

p2PDORB: .long 0x400FF040
v2PDORB: .long 0x0

//p2PDIRA: .long
//p2PDIRB: .long
.text
.global pinInit
.type pinInit function

pinInit:
LDR r0,=p2SIMS
LDR r0,[r0]
LDR r1,=v2SIMS
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PCRRed
LDR r0,[r0]
LDR r1,=v2PCRRed
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PCRBlue
LDR r0,[r0]
LDR r1,=v2PCRBlue
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PCRGreen
LDR r0,[r0]
LDR r1,=v2PCRGreen
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PDDRA
LDR r0,[r0]
LDR r1,=v2PDDRA
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PDDRB
LDR r0,[r0]
LDR r1,=v2PDDRB
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PDORA
LDR r0,[r0]
LDR r1,=v2PDORA
LDR r1,[r1]
STR r1, [r0]

LDR r0,=p2PDORB
LDR r0,[r0]
LDR r1,=v2PDORB
LDR r1,[r1]
STR r1, [r0]

B oneHot
//B johnson
//B bounce
