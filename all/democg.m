
N = 100;
n = 10;
epsilon = 1e-8;
AA = rand(n);
b = rand(n,1);
A = AA'*AA;
x = b;


% Resevanje sistema linearnih enacb
% Metoda konjugiranih gradientov - Datta algoritem 5.4.3
% 
% Podatki:
%               A            Kvadratna matrika n x n
%               b            desna stran sistema
%               x            Zacetni priblizek
%               epsilon      zazelena natancnost priblizka
%               N            Zgornja meja za stevilo iteracij
%
% Rezultat:
%               x            resitev sistema

r = b - A*x;
p = r;
for i = 1:N
  w = A*p;
  alpha = norm(r)^2/(p'*w);
  x = x + alpha*p;
  rn = r - alpha*w;
  if norm(rn)<epsilon, break; endif;
  beta = (norm(rn)/norm(r))^2;
  r = rn;                    
  p = r + beta*p;
end

x

r = A*x - b;
maxerr = max(abs(r))
