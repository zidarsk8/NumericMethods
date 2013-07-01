% Tangentna metoda - algoritem 3.4.2
% Resevanje enacbe f342(x) = 0
% Podatki:
% 		f342	zvezno odvedljiva funkcija
%		df342 odvod funkcije f342
%		a		zacetni priblizek
%		epsy	kriterij za niclo funkcije
%		N		Maksimalno stevilo iteracij
%	   K		Stevilo iteracij do ponovnega racunanja odvoda
% Rezultat:
%		c		priblizek za niclo funkcije f342
%		z		vrednost funkcije f342 pri c

c = a; z = f342(a); d = df342(a);
k = 0; n = 0;
while (abs(z) > epsy) & (n<N)
   c = c - z/d;  C = [C c];
   z = f342(c);  F = [F z];
   if k == K
      d = df342(c); k = 0;
   end
   n = n+1; k = k+1;
end
if abs(z) > epsy
   c = Na;
end


