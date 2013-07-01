
N = 10;
h = 1/10;
x0 = 0; 
y0 = 2;
f = @(x,y) -y+1;

[X Y] = alg641(f,x0,y0,N,h);

E = Y - (exp(-X) + 1)
