% Test algoritma algcheb

N=1000;
n = 2;

algcheb

xx = linspace(-1,1,N);
y = zeros(size(xx));
for j=0:n
y = y + c(j+1)*cheb(xx,j);
end
plot(xx,fcheb(xx),xx,y)

