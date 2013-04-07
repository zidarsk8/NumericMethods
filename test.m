funkcije;

m = 20; % stevilo vrstic znotraj matrike
n = 40; % stevilo stolpcev znotraj matrike
a = 0; % zacetna vrednost Y intervala
b = 0; % zacetna vrednost X intervala
h = 1/60; % korak v X in Y smeri
u = @(x,y)0.05+x/100;
Z = genZ(m,n,a,b,h,u);
f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);

mul2Test1()
mul2Test2()
mulTest3()

%BuiltIn(f,Z,a,b,h,0)
%PoissonCG(f,Z,a,b,h,0)
%PoissonCGsparse(f,Z,a,b,h,0);



%gzTestSmall(8,5)
%  disp ("press return to continue")
%  pause () 
%biTestSmall(8,5)
%  disp ("press return to continue")
%  pause () 
%gzTestSmall(5,8)
%  disp ("press return to continue")
%  pause () 
%biTestSmall(5,8)









%e = 1e-6;
%[z2,iter2,err2] = SOR(f,Z,b,a,h,1000,e);

%diff = abs(z1-z2)
%maxerror = max(max(abs(z1-z2)))

%iter1
%err1
%iter2
%err2

%  (b,a+(m+1)*h)                (b+(n+1)*h,a+(m+1)*h)
%  ...
%  (b,a+2h)
%  (b,a+h)
%  (b,a)    (b+h,a)     ...     (b+(n+1)*h , a)

% m = 10; % stevilo vrstic znotraj matrike
% n = 15; % stevilo stolpcev znotraj matrike
% 
% a = 2; % zacetna vrednost Y intervala
% b = 4; % zacetna vrednost X intervala
% h = 1; % korak v X in Y smeri
% 
% u = @(x,y)x+y;
% 
% Z = genZ(m,n,a,b,h,u);
% 
% f = @(x,y)1;
% e = 1e-10
% [z1,iter1,err1] = GausSeidel(f,Z,b,a,h,1000,e);


