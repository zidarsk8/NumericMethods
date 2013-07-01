% Metoda Runge-Kutta 4. reda - uporaba algoritma 6.4.1

N = 10;
h = 1/N;
x0 = 0;
y0 = 2;

alg641

z = 1 + exp(-X);
hold off
plot(X,Y,'r*',X,z,'g')
	xlabel('x')
	ylabel('Num. resitev (rdeca) in tocna resitev (zelena)')
pause
plot(X,Y-z)
	ylabel('globalna napaka')
	xlabel('x')
