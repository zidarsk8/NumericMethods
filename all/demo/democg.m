% Resevanje sistemov linearnih enacb - Uporaba metode konjugiranih gradientov

N = 100;
n = 10;
epsilon = 1e-8;
AA = rand(n);
b = rand(n,1);
A = AA'*AA;
x = b;
algcg

r = A*x - b;
maxerr = max(abs(r))