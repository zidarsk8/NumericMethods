1;
format long;

% resujemo 3x^2 -3x - 7 atan(x) +2 = 0
%
% x1 = 0.21633913852038680528263187
% x2 = 1.9665866732589687419000391

f = @(x) 3*x^2  - 7 * atan(x) - 3*x +2;
df = @(x)  6*x - 7 / (x^2+1) - 3;
e = 1e-14;


[x,iter] = alg341(f,df,5,e)
f(x)

[x,iter] = alg341(f,df,-5,e)
f(x)

[x,iter] = alg341(f,df,1,e)
f(x)
