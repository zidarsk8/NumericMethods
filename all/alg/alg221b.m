% Direktno vstavljanje - vektorski zapis - algoritem 221b
% Podatki:
%	L	Spodnja trikotna kvadratna matrika reda n
%	b	n-razsezni vektor desnih strani
%	n	stevilo enacb / neznank
% Rezultat:
%	b	Resitev sistema

b(1) = b(1)/L(1,1);
   for i=2:n
      b(i) = (b(i)-L(i,1:i-1)*b(1:i-1))/L(i,i);
   end



