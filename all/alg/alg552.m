% Adaptivna trapezna metoda - algoritem 5.5.2
% Racunanje vrednosti dolocenega integrala
% Podatki:
% 		f552		zvezna funkcija
%		a			zacetna tocka intervala
%		b			koncna tocka intervala
%		N			maksimalno stevilo razpolavljanj
%		epsilon	zahtevana natancnost rezultata
%		sigma 	varnostni koeficient pri izbiri koraka
% Rezultat:
%		I		priblizek za vrednost integrala

sigma = 1;
x = a;
I = 0;
h = (b-a);
fa = f552(a);
fb = f552(a+h);
while x<b
   fb2 = f552(x+h/2);
   T1 = h*(fa+fb)/2;			% Najprej z osnovnim korakom
   T2 = T1/2 + h*fb2/2;		% Ponovno, s polovicnim korakom
   if abs(T1 - T2)/3 < h*epsilon/(b-a)
      x = x + h;				% Rezultat sprejet
      I = I + T2;				% Pristejemo delni rezultat		
      fa = fb;
      h = sigma*sqrt(h^3*3*epsilon/abs(T1-T2)/(b-a));	% novi korak
      if x+h > b				% Ali smo ze blizu konca?
         h = b - x;
      end
      fb = f552(x+h);
   else							% Rezultat zavrnjen
      h = h/2;					% Razpolovimo korak
      fb = fb2;				% Vrednost v desni tocki
   end,H = [H h];X = [X x];
end
