% Metoda najmanjsih kvadratov - uporaba algoritma 4.6.1

x = [1:10];
%f = [5.5 7 12.5 13 17 19.5 24.5 26 27.5 32.5];
f = 3*x + 2 + (2*rand(1:10)-1);
[n,m] = size(x);
k = 1;

alg461

fp = polyval(p,x);
sq = sum((f-fp).^2)

hold off
plot(x,f,'r*')
hold on
plot(x,fp,'g')
pause
plot(x,10*(fp - f),'w')
 grid
