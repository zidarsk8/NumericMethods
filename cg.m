funkcije;
1;



function [Z, iter, err] = PoissonCGSparse(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    [P,b] = genPbSparse(Z,f,h);
    [x, iter, err] = CGSparse(P,b,maxIter,maxError);
    Z(2:end-1,2:end-1) = reshape(x,s-2);
endfunction

function [x,iter,err] = CGSparse(A,b,maxIter,maxError)
    x = b;
    err = [0];
    iter = 0;
    if norm(b) != 0 
        r = b-mul(A,x);
        p = r;
        rsold = r'*r;
        for iter = 1:maxIter
            Ap = mul(A,p);
            alpha = rsold/(p'*Ap);
            x = x+alpha*p;
            r = r-alpha*Ap;
            rsnew = r'*r;
            err = [err sqrt(rsnew)];
            if err(end)<maxError
                  break;
            endif
            p = r+rsnew/rsold*p;
            rsold = rsnew;
        endfor
    endif
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



function [P,b] = genPbSparse(Z,f,h)
    s = size(Z);
    m = s(1)-2; %min(s)-2;
    n = s(2)-2; %max(s)-2;
    P = [ zeros(1,m) ones(1,m*n-m)*-1 ; 
          0 -repmat([ones(1,m-1) 0],1,n)(1:m*n-1) ; 
          ones(1,m*n)*4 ; 
          -repmat([ones(1,m-1) 0],1,n)(1:m*n-1) 0 ;
          -ones(1,m*n-m) zeros(1,m)  ]';
    
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




function CGSparseTest(m,n,maxIter,maxError)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)x*y/(m*n);
    %u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)-ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    tic;
    [A, iter, err] = PoissonCGSparse(f,Z,a,b,h,maxIter,maxError);
    t = toc;
    printf ("\niteracije:   %d \n", iter);
    printf ("napaka:      %e \n", err(end));
    printf ("cas:         %f \n\n", t);
    plot(A,h,a,b);
endfunction



function CGSparseTest2(m,n,maxIter,maxError)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    Z(1,:) = sin((0:m+1)*pi/(1+m));
    f = @(x,y)-3;
    tic;
    [A, iter, err] = PoissonCGSparse(f,Z,a,b,h,maxIter,maxError);
    t = toc;
    printf ("\niteracije:   %d \n", iter);
    printf ("napaka:      %e \n", err(end));
    printf ("cas:         %f \n\n", t);
    plot(A,h,a,b);
endfunction


