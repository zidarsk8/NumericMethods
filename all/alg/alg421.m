% Lagrangeov interpolacijski polinom - algoritem 4.2.1
% Vrednost Lagrangeovega interpolacijskega polinoma
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
	X = zeros(n+1,n); 
   	X(1,:) = x(2:n+1);
		l(1) = prod(t-X(1,:))/prod(x(1) - X(1,:));
	for i = 2:n
   	X(i,:) = [x(1:i-1) x(i+1:n+1)];
		l(i) = prod(t-X(i,:))/prod(x(i) - X(i,:));
	end
   	X(n+1,:) = x(1:n);
		l(n+1) = prod(t-X(n+1,:))/prod(x(n+1) - X(n+1,:));
p = l*f';
	else
	  error('Napacno stevilo podatkov')
end
