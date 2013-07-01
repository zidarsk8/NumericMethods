% Newtonov interpolacijski polinom - uporaba algoritma 4.3.1
% Vrednost Newtonovega interpolacijskega polinoma

x = [1       1.1     1.065270548359763 ];
f = [0.94608 1.02869 1.00035387781083  ];
t = 2;

[b,a] = alg431(x,f,t)

p = diag(a)

xx = [0:0.1:2];
y = nip(p,1,x,xx);
y = nip(p,1,x,1)
y = nip(p,1,x,1.1)
y = nip(p,1,x,1.065270548359763)


% plot(xx,y)

