% LU Razcep - Algoritem 2.4.1
% Podatki:
%	A 	kvadratna matrika z nenicelnimi glavnimi minorji
%	n	red matrike A
%
% Rezultat:
%	A	LU razcep vhodne matrike A - v zgornjem trikotniku marike A je U, v spodnjem brez
%			glavne diagonale pa L brez enojk na glavni diagonali
%			A = L - I + U 

for k=1:n-1
   for i = k+1:n
      A(i,k) = A(i,k)/A(k,k);
      for j = k+1:n
         A(i,j) = A(i,j) - A(i,k)*A(k,j);
      end
   end
end
