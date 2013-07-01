function Y = rk4(fun,x0,y0,N,h)
% Metoda Runge-Kutta 4. reda - algoritem 6.4.1
% Racunanje resitve diferencialne enacbe
% Podatki:
% 		fun			desna stran diferencialne enacbe
%		x0			zacetna tocka 
%		y0			zacetna vrednost resitve
%		N			stevilo korakov
% 		h 			dolzina koraka
% Rezultat:
%		Y			priblizek za resitev diferencialne enacbe

x = x0;  									X = [x];
y = y0;  									Y = [y];
for i = 1:N
   k1 = h*feval(fun,x,y);
   k2 = h*feval(fun,x+h/2,y+k1/2);
   k3 = h*feval(fun,x+h/2,y+k2/2);
   k4 = h*feval(fun,x+h,y+k3);
   x = x+h;									X = [X x];
   y = y + (k1+k2+k2+k3+k3+k4)/6; 	Y = [Y y];
end
