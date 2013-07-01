% Prediktor korektor
% Adams-Bashforth-Moulton  4. reda - uporaba algoritma 6.3.2

N = 10;
h = 1/10;
x0 = 0; 
y0 = 2;
f = @(x,y) -y+1;

[X Y] = alg632(f,x0,y0,N,h);

E = Y - (exp(-X) + 1);
xx = x0:h/10:N*h;
plot(X,Y,'*g',xx,exp(-xx)+1,'r')
pause
plot(X,E)

