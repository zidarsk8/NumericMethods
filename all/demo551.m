% Trapezna metoda s kontrolo koraka - uporaba algoritma 5.5.1

a = 3;
b = 6;
n = 5;
epsilon = 1e-3;
f = @(x) sqrt(x-2);

T = alg551(f,a,b,n,epsilon)
