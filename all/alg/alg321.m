% Bisekcija - Algoritem 3.2.1
% Resevanje enacbe f321(x) = 0
% Podatki:
%	a, b	stevili (a<b), da je f321(a)*f321(b)<0
%	f321	zvezna funkcija na intervalu [a,b]
% 	epsx	zahtevana natancnost nicle
%	epsy	kriterij za ugotavljanje nicelne vrednosti funkcije
% Rezultat
%	c 	Priblizna vrednost nicle funkcije f331
% 	fc	Vrednost funkcije f331 v c

c=(a+b)/2; z = f321(a); y = f321(c);
while (abs(y) > epsy) & (b-a > epsx)
   if y*z<0
      b=c;
   else
      a=c; z = y;
   end
   c=(a+b)/2;
   y = f321(c);		C = [C c];
end



