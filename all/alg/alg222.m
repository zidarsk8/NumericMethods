% Obratno vstavljanje - Algoritem 222
% Resevanje enacbe Ux = b 
% Podatki
%	U	zgornja trikotna nesingularna matrika
%	n	red matrike U
%	b 	vektor dolzine n - desna stran sistema enacb U*x = b
%
% Rezultat:
%	b	resitev sistema enacb

b(n) = b(n)/U(n,n);
for i=n-1:-1:1
   for j=i+1:n
      b(i) = b(i) - U(i,j)*b(j);
   end
   b(i) = b(i)/U(i,i);
end

