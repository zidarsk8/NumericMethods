1;


A = [1 2 3 0 ; 0 2 2 5 ; 0 0 3 -1 ; 0 0 0 7 ];
A =  fliplr(flipud (A))
b = [1 2 3 4]'

x = alg221(A,b)

A*x-b
