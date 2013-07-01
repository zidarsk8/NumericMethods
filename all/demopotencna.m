% Potencna metoda - test algoritma
%
% Podatki:

q=rand(11);
A=q*diag([0.999 1 1./(2:10)])*inv(q);
%A = rand(100) + diag(1:100);
epsilon = 1e-10;
N = 50;

% Racunanje lastnih vrednosti in lastni vektorjev s potencno metodo
% Potencna metoda - Datta, Algoritem 8.5.1
% 
% Podatki:
%               A            Kvadratna matrika n x n
%               epsilon      Konvergencni kriterij
%               N            Zgornja meja za stevilo iteracij
%
% Rezultat:
%               x            lastni vektor
%               lambda       lastna vrednost


[m,n] = size(A);
if n!=m
     error("Matrika A ni kvadratna")
endif
x = rand(n,1);
A2 = A*A;

ls = max(x);
for i = 1:N
   x = A2*x;
   ln = max(x);
   x = x/ln;
   if (abs(ln-ls)<epsilon)
      printf("# iteracij "), i, break 
   endif
   ls = ln;
end
lambda = max(A*x);


[xx,l] = eig(A);
lambda,ll=diag(l)

