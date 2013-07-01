% Trapezna metoda - algoritem 5.2.1
% Racunanje vrednosti dolocenega integrala
% Podatki:
% 		f521	zvezna funkcija
%		a		zacetna tocka intervala
%		b		koncna tocka intervala
%		n		stevilo podintervalov
% Rezultat:
%		c		priblizek za vrednost integrala

h = (b-a)/n;
T = (f521(a)+f521(b))/2;
   for i = 1:n-1
      T = T + f521(a+i*h);
   end
T = T*h
