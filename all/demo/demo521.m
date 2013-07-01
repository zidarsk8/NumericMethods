% Trapezna metoda - uporaba algoritma 5.2.1

a = 3;
b = 6;
n = 3;
N = [];
t = [];
E = [];

for I=1:5
	alg521
	n = 10*n;
	e = T - 14/3
	N = [N n];
	t = [t T];
	E = [E e];
end
