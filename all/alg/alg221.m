% Direktno vstavljanje - algoritem 2.2.1
% Podatki:
%	L	spodnja trikotna nesingularna matrika
%	n	red matrike L
%	b 	vektor dolzine n - desna stran sistema enacb L*x = b
%
% Rezultat:
%	b	resitev sistema enacb

b(1) = b(1)/L(1,1);
   for i=2:n
      for j=1:i-1
         b(i) = b(i) - L(i,j)*b(j);
      end
      b(i) = b(i)/L(i,i);

   end



