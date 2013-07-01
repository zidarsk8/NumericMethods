% Tangentna metoda - algoritem 3.4.1
% Resevanje enacbe f341(x) = 0
% Podatki:
% 		f341	zvezno odvedljiva funkcija
%		df341 odvod funkcije f341
%		a		zacetni priblizek
%		epsy	kriterij za niclo funkcije
%		N		Maksimalno stevilo iteracij
% Rezultat:
%		c		priblizek za niclo funkcije f341
%		z		vrednost funkcije f341 pri c

n = 1;
c = a; z = f341(a);
while (abs(z) > epsy) & (n<N)
   c=c - z/df341(c); C = [C c];
   z = f341(c);
   n = n+1;
end
if abs(z) > epsy
   c = NaN
end


