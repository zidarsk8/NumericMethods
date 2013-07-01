% Sekantna metoda - Algoritem 3.3.2
% Resevanje enacbe f332(x) = 0
% Podatki
%	a, b	zacetni tocki iteracije
%	f332	zvezna funkcija 
%	epsy	kriterij za ugotavljanje nicelne vrednosti funkcije
%	N	maksimalno stevilo iteracij
% Rezultat
%	c 	Priblizna vrednost nicle funkcije f331
% 	fc	Vrednost funkcije f331 v c

xs = a; fs = f332(xs);
xn = b; fn = f332(xn);
n = 0;
while (abs(fn) > epsy) * (n<N)
   c=xs - fs*(xn-xs)/(fn-fs);
   xs = xn; fs = fn;
   xn = c; fn = f332(c);
   n = n+1;
   C = [C c];
end
if abs(fn) > epsy
   c = NaN
end


