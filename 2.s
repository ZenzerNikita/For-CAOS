.global minmax

minmax:
    CMP W0, W1
    B.LT a_min
b_min:
    MOV W2, W1
    MOV W3, W0
    B pack
a_min:
    MOV W2, W0
    MOV W3, W1
pack:
    MOV W0, W2
    LSL X3, X3, #32
    ORR X0, X0, X3
    RET
