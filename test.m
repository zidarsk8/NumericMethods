funkcije;

m = 5; % stevilo vrstic znotraj matrike
n = 5; % stevilo stolpcev znotraj matrike

a = 0; % zacetna vrednost Y intervala
b = 0; % zacetna vrednost X intervala
h = 1/6; % korak v X in Y smeri

u = @(x,y)0.05+x/100;
%u = @(x,y)0;

Z = genZ(m,n,a,b,h,u);
%P = genP(m,n,a,b,h,u);

f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);

%zz = BuiltIn(f,Z,b,a,h,50)


%g = @(x,y)-f(x*h,y*h)*h^2;
gzTestSmall()

  disp ("press return to continue")
  pause () 
biTestSmall()









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


