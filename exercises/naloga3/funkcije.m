1;

function Y = rk(alpha,x0,x1,y0,N)
    F = @(x,z) [ z(2)
                 x.*z(1) ];
    %x0 = 1; 
    %x1 = 2;
    y = [y0;alpha]; % zacetna vrednost in zacetni odvod
    %N = 10;
    Y = rk4v(F,y,x0,x1,N);
end


function f = partFb(x0,x1,y0,N)
    f = @(alpha) rk(alpha,x0,x1,y0,N)(:,end);
end

function f = partFd(alpha,x0,y0,N)
    f = @(x1) rk(alpha,x0,x1,y0,N)(:,end);
end





