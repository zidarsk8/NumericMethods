% Metoda DOPRI5 - uporaba algoritma 6.5.1

y0 = 2;
x0 = 0;
b = 10;
epsilon = 1e-8;
h = b-x0;
sigma = 0.9;

alg651

err = Y - (exp(-X)+1);
maxerr = max(abs(err))
figure(1)
subplot(211)
plot(X,Y,X,Y,'*')
ylabel('Resitev')
subplot(212)
plot(X,-err)
%gtext('10^7*napaka')
%gtext('Resitev')
xlabel('x')
ylabel('Napaka')
figure(2)
bar(X, H)
