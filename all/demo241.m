1;

A = [ 3 4 1 ; 5 5 1 ; 2 2 4 ]
b=[ 6 6 10 ]'

[L, U] = alg241(A)

% L U x = b   ->  L y = b   in   U x =y

y = alg221(L,b);

x = alg222(U,y)

max(A*x-b)

