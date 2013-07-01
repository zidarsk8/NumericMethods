1;


A = [ 6 2 2 ; 2 1 3 ; 1 2 -1 ]
b=[ -2 1 0 ]'

[L, U, P] = alg251(A)

% L U x = P b   ->  L y = P b   in   U x = y

y = alg221(L,P*b)

x = alg222(U,y)

A*x-b


