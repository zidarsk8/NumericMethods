1;

function Z = genZ(m,n,a,b,c,d,u)
    x = linspace (a,b,m+2)
    y = linspace (c,d,n+2)
    Z = zeros(m+2,n+2);
    Z(:,1) = u(x,y(1))
    Z(:,end) = u(x,y(end))
    Z(1,:) = u(x(1),y)
    Z(end,:) = u(x(end),y)
endfunction


function x=plot(Z,h)
    x = y = -1:h:1;
    [xx,yy] = meshgrid(x,y);
    mesh(x,y,Z);
endfunction

function Z = GausSeidel(f,Z,x,y)
    

    for j=1:i
        for a=2:n-1
            for b=2:n-1
                Z(a,b)=(Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1)-h^2*f(a/n,b/n))/4;
            endfor
        endfor
        sleep(0.001)
        plot(Z,h);
    endfor
endfunction



%function Jacobi = 





