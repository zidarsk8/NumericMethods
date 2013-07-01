function y = nip(p,n,c,x)
% Algoritem za izracun vrednosti Newtonovega interpolacijskega polinoma
% Podatki:
%		p		koeficienti Newtonovega interpolacijskega polinoma
%     n 		stopnja interpolacijskega polinoma
%		c		interpolacijske tocke
%		x		tocka, v kateri racunamo vrednost
% Rezultat:
% 		y		vrednost polinoma
% y = p(1) + p(2)*(x - c(1))
%			  + p(3)*(x - c(1))*(x - c(2)) + ...
%			  + p(n+1)*(x - c(1))*(x - c(2))*...*(x - c(n))

y = p(n+1);
for i = n:-1:1
	y = y.*(x - c(i)) + p(i);
end

