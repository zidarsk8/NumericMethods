% Simpsonova metoda - algoritem 5.3.1
% Racunanje vrednosti dolocenega integrala
% Podatki:
% 		f531	zvezna funkcija
%		a		zacetna tocka intervala
%		b		koncna tocka intervala
%		n		stevilo podintervalov
% Rezultat:
%		c		priblizek za vrednost integrala

h = (b-a)/n/2;
S = (f531(a)+f531(b)+4*f531(a+h));
   for i = 1:n-1
      S = S + 2*f531(a+2*i*h) + 4*f531(a+2*i*h+h);
   end
S = S*h/3



