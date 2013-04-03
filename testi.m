funkcije;

% http://www.physics.buffalo.edu/phy410-505/2011/topic3/app1/index.html

%  % 1. naloga
%  l = @(x)0;
%  r = @(x)0;
%  u = @(x)1-x.^2;
%  d = @(x)x.^2-1;
%  f = @(x,y)0;
%  
%  
%  % 3. naloga
l = @(x)cos(x.*pi./2);
r = @(x)cos(x.*pi./2);
u = @(x)0;
d = @(x)0;
f = @(x,y)0;
%  
%  % 4. naloga
%  l = @(x)0;
%  r = @(x)0;
%  u = @(x)0;
%  d = @(x)0;
%  f = @(x,y)1;
  

%  % 5. naloga
%  l = @(x)0;
%  r = @(x)1;
%  u = @(x)1;
%  d = @(x)0;
%  f = @(x,y)sqrt(2-x^2-y^2);



Z = GausSeidel(l,r,u,d,f,1/4,30);




