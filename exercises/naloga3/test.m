1;

[alpha, Y0] = strelska(1.6,2,-2,-2.5,0,2,20,10,1e-10)
[m, Y1]     = maksimum(1.6,2,-2,-2.5,0,2,20,10,1e-10)

[alpha, Y0] = strelska(1,2,-2,-2,0,2,30,10,1e-5)
[m, Y1]     = maksimum(1,2,-2,-2,0,2,10,10,1e-5)


%f = @(x) x*x-2;
%sekantna(f,0,3,10,1e-10)
%
%
%
%
%function testRK()
%    format long;
%
%    % DSolve[{y'[x] == -y[x] + Sin[x] + 1, y[0] == 2}, y[x], x];
%    f = @(x,y) -y + 1 + sin(x);
%    F = @(x) -(1/2) * exp(-x) * (-3 - 2 * exp(x) + exp(x) * cos(x) - exp(x) * sin(x));
%
%    x0 = 0; % zacetna tocka
%    x1 = 5; % koncna tocka
%    y0 = 2; % zacetna vrednost resitve
%    N = 501;
%    rk4v(f,y0,x0,x1,N)(end)
%    rk4(f,y0,x0,x1,N)(end)
%    F(5)
%end
%
%
%testRK();
%function Y = rk(alpha,x0,x1,y0,N)
%    F = @(x,z) [ z(2)
%                 x.*z(1) ];
%    %x0 = 1; 
%    %x1 = 2;
%    y = [y0;alpha]; % zacetna vrednost in zacetni odvod
%    %N = 10;
%    Y = rk4v(F,y,x0,x1,N);
%end
%
%rk(1.026172932,1,2,-2,20)'
%
%function f = partFb(x0,x1,y0,N)
%    f = @(alpha) rk(alpha,x0,x1,y0,N)(1,end);
%end
%
%function f = partFd(alpha,x0,y0,N)
%    f = @(x1) rk(alpha,x0,x1,y0,N)(:,end);
%end
%
%fb = partFb(1,2,-2,20);
%fd = partFd(1.026172932,1,-2,20);
%fb(1.026172932)
%fd(1.5)
%
%
