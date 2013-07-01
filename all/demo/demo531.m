% Trapezna metoda - uporaba algoritma 5.3.1
% Racunanje vrednosti dolocenega integrala

a = 3;
b = 6;
n = 3;
N = [];
s = [];
E = [];

for I=1:3
	alg531
	n = 10*n;
	e = S - 14/3
	N = [N n];
	s = [s S];
	E = [E e];
end



