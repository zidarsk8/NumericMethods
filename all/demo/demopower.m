% Potencna metoda - test algoritma
%
% Podatki:

q=rand(101);A=q*diag([0.999 1 1./(2:100)])*inv(q);
%A = rand(100) + diag(1:100);
epsilon = 1e-10;
N = 50;

algpower

[xx,l] = eig(A);
lambda,ll=diag(l)
