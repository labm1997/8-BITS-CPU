lui 1 3 # R3 = 1
lui 0 0 # SP = 0x0
lui 1 1 # R1 = 1
lui 1 2 # R2 = 1
sb 0 1 # Salva R1
add 3 0 # SP = SP + 1
sb 0 2 # Salva R2
lui 0 3 # R3 = 00b
sla 2 3 # R3 = R3 << 2 = 0000b
lui 0 3 # R3 = 0000b
sla 2 3 # R3 = R3 << 2 = 000000b
lui 0 3 # R3 = 000000b
sla 2 3 # R3 = R3 << 2 = 00000000b
lui 1 3 # R3 = 00000001b
add 2 1 # R1 = R1+R2
add 3 0 # SP = SP + 1
sb 0 1 # Salva R1
add 3 0 # SP = SP + 1
sb 0 2 # Salva R2
lb 0 1 # R1 = R2
lui 3 3 # R3 = 11b
sla 2 3 # R3 = R3 << 2 = 1100b
lui 3 3 # R3 = 1111b
sla 2 3 # R3 = R3 << 2 = 111100b
lui 3 3 # R3 = 111111b
sla 2 3 # R3 = R3 << 2 = 11111100b
lui 3 3 # R3 = 11111111b
add 3 0 # SP = SP - 1
lb 0 2 # R2 = old(R1)
lui 0 3 # R3 = 00b
sla 2 3 # R3 = R3 << 2 = 0000b
lui 0 3 # R3 = 0000b
sla 2 3 # R3 = R3 << 2 = 000000b
lui 1 3 # R3 = 000001b
sla 2 3 # R3 = R3 << 2 = 00000100b
lui 3 3 # R3 = 00000111b
j 3 # Jump
