% Psevdodspektralna  metoda - uporaba algoritma 6.9.3

N = 8;

a = 0;
A= 11/8;
b = 1;
B = 9/8;

alg693

y = ak(1);
for k=1:N
	y = y + ak(k+1)*cheb(x,k);
end

figure(1)
plot([b x a],[B y A])
figure(2)
semilogy(x,abs((3+4*x+2*x.^2)/8+exp(2*x).*(1-x)-y))


