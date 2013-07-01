% Newtonov interpolacijski polinom - uporaba algoritma 4.3.1
% Vrednost Newtonovega interpolacijskega polinoma

x = [1 3 6 10];
f = [3 2 6 1];
t = 2;

alg431

p = diag(a)

xx = [0:0.1:10];
y = nip(p,3,x,xx)
plot(xx,y)
