% LU razcep z delnim pivotiranjem - Algoritem 2.5.1
% Podatki:
%	A 	kvadratna nesingularna matrika
%	n	red matrike A
%
% Rezultat:
%	A	LU razcep matrike PA - v zgornjem trikotniku marike A je U, v spodnjem brez
%			glavne diagonale pa L brez enojk na glavni diagonali
%			A = L - I + U 
%	p	permutacijski vektor

for k=1:n-1
   pivot = abs(A(k,k));
   p(k) = k;
   for i = k+1:n
      if abs(A(i,k))>pivot;
         pivot=abs(A(i,k));
         p(k) = i;
      end
   end            %Element A(ik) je najvecji
   temp = A(k,:);  	%Zamenjamo k-to in p(k)-to vrstico
   A(k,:) = A(p(k),:);
   A(p(k),:) = temp;
   for i = k+1:n
      A(i,k) = A(i,k)/A(k,k);
   end
   for j = k+1:n
      for i=k+1:n
         A(i,j) = A(i,j) - A(i,k)*A(k,j);
      end
   end
end
