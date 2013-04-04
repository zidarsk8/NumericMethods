
m = 4
n = 3

a = 2
b = 4
c = 3
d = 6

u = @(x,y)x+y;

function Z = genZ(m,n,a,b,c,d,u)
    x = linspace (a,b,m+2)
    y = linspace (c,d,n+2)

    Z = zeros(m+2,n+2);
    Z(:,1) = u(x,y(1))
    Z(:,end) = u(x,y(end))
    Z(1,:) = u(x(1),y)
    Z(end,:) = u(x(end),y)
endfunction



