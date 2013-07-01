% Trapezna metoda s kontrolo koraka - uporaba algoritma 5.5.1

a = 3;
b = 6;
N = 20;
epsilon = 1e-1;
EE = [];
TT = [];
FF = [];T = 0;
EPS = [];

for I = 1:8
	fs = flops;
	alg551
	fn = flops;
	F = fn-fs;
	FF = [FF F];
	EPS = [EPS epsilon];
	epsilon = epsilon/10;
	E = T - 14/3;
	TT = [TT T];
	EE = [EE E];
end
loglog(EPS,abs(EE)), grid
	xlabel('log(epsilon)')
	ylabel('log(napaka)')
pause
loglog(EPS,FF)
	xlabel('log(epsilon)')
	ylabel('log(flops)')
