% Koeficienti ortogonalnih polinomov - algoritem 4.7.1
% Koeficienti rekurzivne formule
%  t_{n+1}(x) = (x - a_{k+1})t_k(x) - b_k t_{k-1}(x)
%
% Podatki:
% 		x		mnozica (med seboj razlicnih) abcis
% 		k		maksimalna stopnja polinoma iz ortogonalnega zaporedja
% Rezultati:
%		a		koeficienti a rekurzivne formule		 
%		b		koeficienti b rekurzivne formule		 

[m,n] = size(x)
t = zeros(k,n);
a = zeros(k,1);
b = zeros(k,1);
t(1,:) = ones(1,n);
t(2,:) = x - sum(x)/n;
for i = 2:k
   a(i+1) = (x*(t(i,:).*t(i,:))')/(t(i,:)*t(i,:)')';
   b(i) = t(i,:)*t(i,:)'/(t(i-1,:)*t(i-1,:)');
   t(i+1,:) = (x(:) - a(i+1))'.*t(i,:) - b(i)'.*t(i-1,:);
end
