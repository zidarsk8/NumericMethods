% Razcep Choleskega - algoritem 2.6.1
%
% Podatki:
%	A	pozitivno definitna simetricna matrika
%	n 	red matrike A
%
% Rezultat:
%	A	zgornji trikotnik matrike A vsebuje zgornje trikotno matriko R, da je A = R'*R

for k=1:n
	A(k,k) = sqrt(A(k,k));
	A(k,k+1:n) = A(k,k+1:n)/A(k,k);
	for i = k+1:n
		A(i,i:n) = A(i,i:n) - A(k,i:n)*A(k,i);
	end
end