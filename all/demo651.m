% Metoda DOPRI5 - uporaba algoritma 6.5.1

y0 = 2;
x0 = 0;
b = 10;
epsilon = 1e-8;
h = b-x0;
sigma = 0.9;
f = @(x,y) -y+1;

[X Y] = alg651(f,x0,y0,h,b,epsilon,sigma)

err = Y - (exp(-X)+1);
maxerr = max(abs(err))
