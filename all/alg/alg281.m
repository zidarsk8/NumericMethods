% Jacobijeva iteracija - Algoritem 2.8.1
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
N = A - D; 
for k=1:it, x = (D\(b-N*x));x',X = [X x]; end
