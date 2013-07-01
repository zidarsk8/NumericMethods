% Metoda regula falsi - Algoritem 3.3.1
% Resevanje enacbe f331(x) = 0
% Podatki
%%	a, b	stevili (a<b), da je f331(a)*f331(b)<0
%	f331	zvezna funkcija na intervalu [a,b]
% 	epsx	zahtevana natancnost nicle
%	epsy	kriterij za ugotavljanje nicelne vrednosti funkcije
% Rezultat
%	c 	Priblizna vrednost nicle funkcije f331
% 	fc	Vrednost funkcije f331 v c

fa = f331(a); fb = f331(b);
c=a - fa*(b-a)/(fb-fa); 
fc = f331(c);
while (abs(fc) > epsy) * (b-a > epsx)
   if fa*fc<0
      b=c; fb = fc;
   else
      a=c; fa = fc;
   end
   c=a - fa*(b-a)/(fb-fa);		C = [C c];
   fc = f331(c);
end



