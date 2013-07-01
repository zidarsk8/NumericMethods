% Metoda fiksne tocke - Uporaba algoritma 3.5.1
% Resevanje enacbe x = g351(x)
% Podatki:
% 		g351	zvezno odvedljiva funkcija
%		x		zacetni priblizek
%		epsy	kriterij za niclo funkcije
%		N		Maksimalno stevilo iteracij
% Rezultat:
%		c		priblizek za niclo funkcije x - g351(x)
%		z		vrednost funkcije g351(c)


n=0; c=x; z=g351(x);
while (abs(c-z) > epsilony) & (n<N)
   c = z; 		 C = [C c];
   z = g351(c); Z = [Z z];
   n = n+1;
end
if abs(c-z) > epsy
   c = NaN
end

