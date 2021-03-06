1;

function [P,b] = genPb(Z,f,h)
    s = size(Z);
    m = s(1)-2; %min(s)-2;
    n = s(2)-2; %max(s)-2;
    P = zeros(m*n);
    P += diag(-ones(1,m*n-m),m);
    P += diag(-ones(1,m*n-m),-m);
    P += diag(-repmat([ones(1,m-1) 0],1,n)(1:m*n-1),1);
    P += diag(-repmat([ones(1,m-1) 0],1,n)(1:m*n-1),-1);
    P += eye(m*n)*4;

    zu = [Z(2:end-1,1)' zeros(1, n*m - (s(1)-2))];
    zd = [zeros(1, n*m - (s(1)-2)) Z(2:end-1,end)'];
    zl = zeros(1,m*n);
    zl((1:s(1)-2:end)+s(1)-3) = Z(end,2:end-1);
    zr = zeros(1,m*n);
    zr((1:s(1)-2:end)) = Z(1,2:end-1);

    ga = repmat(1:m,1,n);
    gb = ceil((1:m*n)./m);
    g = @(a,b) -f(b*h,a*h)*h^2;
    gvals = g(ga,gb);
    b = (gvals+zu+zd+zl+zr)';
endfunction



function Z = genZ(m,n,a,b,h,u)
    y = linspace (a, a + h * (m + 1), m+2);
    x = linspace (b, b + h * (n + 1), n+2);
    Z = zeros(m+2,n+2);
    Z(:,1) = u(x(1),y);
    Z(:,end) = u(x(end),y);
    Z(1,:) = u(x,y(1));
    Z(end,:) = u(x,y(end));
endfunction


function y = mul(A,x)
    l = size(A)(1);
    m = l + sum(A(:,1));
    n = l / m;
    x = [zeros(m+1,1);x;zeros(m+1,1)];
    y = zeros(l,1);
    i = 1:l;
    y(i) = A(i,1).*x(i+1) + A(i,2).*x(i+m) + A(i,3).*x(i+m+1) + A(i,4).*x(i+m+2) + A(i,5).*x(i+m+m+1);
endfunction


function Z = BuiltIn(f,Z,x,y,h,i)
    s = size(Z);
    [P,b] = genPb(Z,f,h);
    Z(2:end-1,2:end-1) = reshape(P\b,s-2);
    plot(Z,h,y,x);
endfunction










function gzTestSmall(m,n)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    h = 1/6; % korak v X in Y smeri
    u = @(x,y)x/100;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);
    GausSeidelPlot(f,Z,b,a,h,50);
endfunction

function biTestSmall(m,n)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    h = 1/6; % korak v X in Y smeri
    u = @(x,y)x/100;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);
    BuiltIn(f,Z,b,a,h,50);
endfunction

function gzTest2()
    m = 21; % stevilo vrstic znotraj matrike
    n = 21; % stevilo stolpcev znotraj matrike
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    h = 1/22; % korak v X in Y smeri
    u = @(x,y)x/2000;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);
    GausSeidelPlot(f,Z,b,a,h,50);
endfunction



function gzTest2()
    m = 21; % stevilo vrstic znotraj matrike
    n = 21; % stevilo stolpcev znotraj matrike
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    h = 1/22; % korak v X in Y smeri
    u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)ifelse(y==0.5,1,0).*ifelse(x==0.5,1,0);
    GausSeidelPlot(f,Z,b,a,h,50);
endfunction



function gzTest3(m,n)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)x*y/(m*n);
    %u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    GausSeidelPlot(f,Z,b,a,h,50);
endfunction



function gzTest1(m,n)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    Z(1,:) = sin((0:m+1)*pi/(1+m));
    f = @(x,y)-3;
     GausSeidelPlot(f,Z,b,a,h,50);
endfunction








function x=plot(Z,h,a,b)
    s = size(Z);
    f = ceil(max(s)/50);
    h = h*f;
    Z = Z(1:f:s(1),1:f:s(2));
    s = size(Z);
    x = linspace (a, a + h * (s(2)-1), s(2));
    y = linspace (b, b + h * (s(1)-1), s(1));
    [xx,yy] = meshgrid(x,y);
    mesh(x,y,Z);
endfunction

function [Z,iter,err] = GausSeidel(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = maxError + 1
    while iter++ < maxIter && err > maxError
        for a=2:s(1)-1
            for b=2:s(2)-1
                Z(a,b)=( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) + h^2 * f(x+(b-1)*h,y+(a-1)*h) )/4;
            endfor
        endfor
        err = max(max(abs(Z-prev)));
        prev = Z;
    endwhile
endfunction

function Z = GausSeidelPlot(f,Z,x,y,h,i)
    s = size(Z);
    for j=1:i
        for a=2:s(1)-1
            for b=2:s(2)-1
                Z(a,b)=( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) + h^2 * f(x+(b-1)*h,y+(a-1)*h) )/4;
            endfor
        endfor
        sleep(0.001);
        plot(Z,h,y,x);
    endfor
endfunction



