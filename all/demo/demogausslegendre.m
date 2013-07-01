% Gauss-Legenreova metoda - uporaba algoritma alggausslegendre

a = 3;
b = 6;
n = 3;
N = [];
t = [];
E = [];

for I=1:5
	alggausslegendre
	n = 10*n;
    e = T - 14/3;
	N = [N n];
	t = [t T];
	E = [E e];
end
loglog(N,abs(E)), grid
title('Trapezna metoda')
     xlabel('Stevilo tock')
     ylabel('Napaka')
