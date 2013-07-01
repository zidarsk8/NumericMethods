% Newtonov interpolacijski polinom - uporaba algoritma 4.3.1
% Vrednost Newtonovega interpolacijskega polinoma

x = [0:0.1:0.3];
f = sin(x);
t = 2;

alg431

p = diag(a);

xx = [0:0.001:0.3];
y1 = nip(p,1,x,xx)-sin(xx);
y2 = nip(p,2,x,xx)-sin(xx);
y3 = nip(p,3,x,xx)-sin(xx);
hold off
plot(xx,y2,'g',xx,y3,'w')
axis(axis)
hold on
plot(xx,y1,'r')
grid
