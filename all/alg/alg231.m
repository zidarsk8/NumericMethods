% Gaussova eliminacija - algoritem 2.3.1
% Podatki:
%	A     kvadratna matrika z nesingularnimi glavnimi minorji
%	n	red matrike A
%	b 	vektor dolzine n - desna stran sistema enacb A*x = b
%
% Rezultat:
%	A	zgornji trikotnik matrike vsebuje z Gaussovim algoritmom predelano prvotno matriko
%	b	predelane desne strani sistema enacb
% Prvotnemu sistemu A*x = b je ekvivalenten zgornji trikotni sistem triu(A)*x = b

for k=1:n-1
   for i=k+1:n
      M(i,k) = A(i,k)/A(k,k);
      for j=k+1:n
        'A(i,j) = A(i,j) - M(i,k)*A(k,j);
      end
      b(i) = b(i) - M(i,k)*b(k);
   end
end

