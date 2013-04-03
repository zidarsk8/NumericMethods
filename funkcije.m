1;

function Z=generateZ(l,r,u,d,n,m)
    Z = zeros(n,m)
    hn = 1 / (n-1)
    hm = 1 / (m-1)
    Z(:,1) = l(-1:hn:1);
    Z(:,end) = r(-1:hn:1);
    Z(1,:) = u(-1:hm:1);
    Z(end,:) = d(-1:hm:1);
endfunction

function x=plot(Z,h)
    x = y = -1:h:1;
    [xx,yy] = meshgrid(x,y);
    mesh(x,y,Z);
endfunction

function Z = GausSeidel(l,r,u,d,f,h,i)
    n=2/h+1;
    Z = zeros(n);
    Z(:,1) = l(-1:h:1);
    Z(:,end) = r(-1:h:1);
    Z(1,:) = u(-1:h:1);
    Z(end,:) = d(-1:h:1);

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





