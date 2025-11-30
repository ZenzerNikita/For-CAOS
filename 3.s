.global fact

fact:
    MOV X1, #1

step:
    cmp X0, #1
    B.LE done
    MUL X1, X1, X0
    SUB X0, X0, #1
    B step

done:
    MOV X0, X1
    RET
