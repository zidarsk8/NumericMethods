% Newtonov interpolacijski polinom - algoritem 4.3.1
% Vrednost Newtonovega interpolacijskega polinoma
% Podatki:
% 		x		interpolacijske tocke
%		f 		interpolacijske vrednosti
%		t		tocka, v kateri racunamo vrednost
% Rezultat:
%		p		vrednost interpolacijskega polinoma v tocki t

[ans,n] = size(x);	% stevilo interpolacijskih tock
[ans,m] = size(f);		% stevilo interpolacijskih vrednosti

if n==m
	n = n-1;
	a = zeros(n+1,n+1); a(:,1) = f';
	p = a(1,1);		 	  u = 1;
	for i = 2:n+1
   	u = u.*(t - x(i-1));
		for j=2:i
	      a(i,j) = (a(i,j-1) - a(i-1,j-1))/(x(i) - x(i-j+1));
   	end
		p = p + a(i,i)*u;
	end
	else
	  error('Napacno stevilo podatkov')
end
