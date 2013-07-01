1;


A = [ 3 4 1 ; 6 4 1 ; 9 2 4 ]
b=[ 1 1 1 ]'

[AA,bb] = alg231(A,b)

x = alg222 (AA,bb)

A*x-b
