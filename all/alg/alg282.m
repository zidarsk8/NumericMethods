% Gauss-Sedlova iteracija - Algoritem 2.8.2
% Resevanje sistema Ax = b
% Podatki:
%	A	Matrika sistema (diagonalno dominantna)
%	n 	Red matrike A
%	b 	Desna stran sistema
%	x	Zacetni priblizek za resitev
%	it	Stevilo iteracij
% Rezultat
%	x	Resitev sistema

D = diag(diag(A));
Z = triu(A,1);
S = tril(A,-1); 
for k=1:it, x = (S+D)\(b-Z*x);x',X = [X x]; end
