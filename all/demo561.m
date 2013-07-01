%  Rombergova metoda - uporaba algoritma 5.6.1

a = 3;
b = 6;
k = 6;
f = @(x) sqrt(x-2);

T = alg561(f,a,b,k)

E = tril(T - 14/3)

