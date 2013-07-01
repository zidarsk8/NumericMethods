% Strelska metoda - Algoritem 6.9.1
% Racunanje resitve robnega problema
%		[y,z]' = f691(x,y,z); y(x0) = y(0), y(b) = B
% Podatki:
% 		f691	   desna stran diferencialne enacbe
%		x0			zacetna tocka 
%		y0			zacetna vrednost resitve y
%		b			koncna tocka 
%		B			koncna vrednost resitve z
%		alpha0, alpha1
%					dva zacetna priblizka za z(x0)	
%		N			stevilo korakov
% 		h 			dolzina koraka
% Rezultat:
%		alpha		prava vrednost za z(x0)
%		Y			priblizek za resitev diferencialne enacbe


y = [y0 alpha0]';
A = [alpha0 alpha1];

Yplot = [];
Y = rk4('f691',x0,y,N,h);
Yplot = [Yplot Y(1,2:101)'];
ys = Y(1,N+1);%[alpha0,ys]
hold off, axis([0 1 0 8])
plot(X,Y(1,:),'g');pause(1)
hold on

y = [y0 alpha1]';
Y = rk4('f691',x0,y,N,h);
plot(X,Y(1,:),'r');pause(1)
Yplot = [Yplot Y(1,2:101)'];
yn = Y(1,N+1);%[alpha1,yn]
j = 1;
while (abs(yn-B)>epsilon) & (j<m)
	j = j+1;
	alpha = alpha0 + (alpha1 - alpha0)*(B-ys)/(yn-ys);
	A = [A alpha];
 	y = [y0 alpha]';
	Y = rk4('f691',x0,y,N,h);
	plot(X,Y(1,:));pause(1)
	Yplot = [Yplot, Y(1,2:101)'];
	ys = yn;
	yn = Y(1,N+1);
	alpha0 = alpha1;
	alpha1 = alpha;
%[alpha,yn]
end
	plot(X, Y(1,:)','m');
if abs(yn-B)>epsilon
	alpha = NaN
end
