1;
format long;

f = @(x) -5*x^2+0.1;
g = @(x) -5*x^2+x+0.1;
e = 1e-14;


[x,iter] = alg351(g,0,e)
f(x)


