1;

n = 100
A = ceil(rand(n)*100);
b = ceil(rand(n,1)*200);


[L, U] = alg241(A);
y = alg221(L,b);
x = alg222(U,y);

% x = b;

for i=1:5
    x = alg271(A,L,U,x,b);
    max(A*x-b)
end

