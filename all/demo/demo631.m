% Adams-Bashforthova metoda 4. reda - Uporaba algoritma 6.3.1

N = 10;
h = 1/N;
x0 = 0; 
y0 = 2;

alg631

z = 1 + exp(-X);
hold off
plot(X,Y,'y*',X,z,'g')
	xlabel('x')
	ylabel('Num. resitev (rumena) in tocna resitev (zelena)')
pause
plot(X,Y-z)
	ylabel('globalna napaka')
	xlabel('x')
