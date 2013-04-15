funkcije;
1;



function [Z,iter,err] = sorjw(f,Z,x,y,h,w,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    a=2:s(1)-1;
    b=2:s(2)-1;
    [aa,bb] = meshgrid(a,b);
    ff =  h.^2 .* f(x+(bb-1).*h,y+(aa-1).*h); 
    while iter++ < maxIter && err(end) > maxError
        Z(a,b) = (1-w).*Z(a,b) + w .*  ( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) - ff)./4;
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction

function [Z,iter,err] = sorj(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    w = 1 / (1 + pi/s(1))
    a=2:s(1)-1;
    b=2:s(2)-1;
    [aa,bb] = meshgrid(a,b);
    ff =  h.^2 .* f(x+(bb-1).*h,y+(aa-1).*h); 
    while iter++ < maxIter && err(end) > maxError
        Z(a,b) = (1-w).*Z(a,b) + w .*  ( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) - ff)./4;
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction




function [Z,iter,err] = sorj2w(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    w = 1 / (1 + pi/s(1))
    a=2:s(1)-1;
    b=2:s(2)-1;
    a1 = a(1:2:end);
    b1 = b(1:2:end);
    a2 = a(2:2:end);
    b2 = b(2:2:end);
    [aa1,bb1] = meshgrid(a1,b1);
    [aa2,bb2] = meshgrid(a2,b2);
    ff1 =  h.^2 .* f(x+(bb1-1).*h,y+(aa1-1).*h); 
    ff2 =  h.^2 .* f(x+(bb2-1).*h,y+(aa2-1).*h); 
    while iter++ < maxIter && err(end) > maxError
        Z(a1,b1) = (1-w).*Z(a1,b1) + w .*  ( Z(a2+1,b1)+Z(a2-1,b1)+Z(a1,b2+1)+Z(a1,b2-1) - ff1)./4;
        Z(a2,b2) = (1-w).*Z(a2,b2) + w .*  ( Z(a1+1,b2)+Z(a1-1,b2)+Z(a2,b1+1)+Z(a2,b1-1) - ff2)./4;
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction


function [Z,iter,err] = sorj2(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    w = 1 / (1 + pi/s(1))
    a=2:s(1)-1;
    b=2:s(2)-1;
    a1 = a(1:2:end);
    b1 = b(1:2:end);
    a2 = a(2:2:end);
    b2 = b(2:2:end);
    [aa1,bb1] = meshgrid(a1,b1);
    [aa2,bb2] = meshgrid(a2,b2);
    ff1 =  h.^2 .* f(x+(bb1-1).*h,y+(aa1-1).*h); 
    ff2 =  h.^2 .* f(x+(bb2-1).*h,y+(aa2-1).*h); 
    while iter++ < maxIter && err(end) > maxError
        Z(a1,b1) = (1-w).*Z(a1,b1) + w .*  ( Z(a2+1,b1)+Z(a2-1,b1)+Z(a1,b2+1)+Z(a1,b2-1) - ff1)./4;
        Z(a2,b2) = (1-w).*Z(a2,b2) + w .*  ( Z(a1+1,b2)+Z(a1-1,b2)+Z(a2,b1+1)+Z(a2,b1-1) - ff2)./4;
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction



function [Z,iter,err] = sorw(f,Z,x,y,h,w,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    while iter++ < maxIter && err(end) > maxError
        for a=2:s(1)-1
            for b=2:s(2)-1
                Z(a,b) = (1-w).*Z(a,b) + w .* ( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) - h.^2 .* f(x+(b-1).*h,y+(a-1).*h) )./4;
            endfor
        endfor
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction




function [Z,iter,err] = sor(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    w = 2 / (1 + pi/s(1));
    while iter++ < maxIter && err(end) > maxError
        for a=2:s(1)-1
            for b=2:s(2)-1
                Z(a,b) = (1-w).*Z(a,b) + w .* ( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) - h.^2 .* f(x+(b-1).*h,y+(a-1).*h) )./4;
            endfor
        endfor
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction






function sorjTest(m,n,maxIter,maxError)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)x*y/(m*n);
    %u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)-ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    tic;
[A, iter, err] = sorj(f,Z,a,b,h,maxIter,maxError);
    t = toc;
    printf ("\niteracije:   %d \n", iter);
    printf ("napaka:      %e \n", err(end));
    printf ("cas:         %f \n\n", t);
    plot(A,h,a,b);
endfunction



function sorj2Test(m,n,maxIter,maxError)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)x*y/(m*n);
    %u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)-ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    tic;
[A, iter, err] = sorj2(f,Z,a,b,h,maxIter,maxError);
    t = toc;
    printf ("\niteracije:   %d \n", iter);
    printf ("napaka:      %e \n", err(end));
    printf ("cas:         %f \n\n", t);
    plot(A,h,a,b);
endfunction



function sorTest(m,n,maxIter,maxError)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)x*y/(m*n);
    %u = @(x,y)0;
    Z = genZ(m,n,a,b,h,u);
    f = @(x,y)-ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    tic;
[A, iter, err] = sorj(f,Z,a,b,h,maxIter,maxError);
    t = toc;
    printf ("\niteracije:   %d \n", iter);
    printf ("napaka:      %e \n", err(end));
    printf ("cas:         %f \n\n", t);
    plot(A,h,a,b);
endfunction

function sorTestW(m,n,a,b,h,fun,u,steps)
    Z = genZ(m,n,a,b,h,u);
    maxIter = 10000;
    maxError = 0;
    [A, iter, err] = sorjw(fun,Z,a,b,h,1,maxIter,maxError);
    iter
    err(end)

    maxIter = 50
    f = 0;
    t = 2;
    for i=1:steps
        f1 = f + (t-f)/3;
        t1 = f + (t-f)/3*2;
        [Af, iterf, errf] = sorjw(fun,Z,a,b,h,f1,maxIter,maxError);
        [At, titert, errt] = sorjw(fun,Z,a,b,h,t1,maxIter,maxError);
        ef = max(max(abs(A-Af)));
        et = max(max(abs(A-At)));
        if ef < et
            t = t1;
            printf("f: %.5f    t: %.5f    err: %e\n", f,t,ef);
        else
            f = f1;
            printf("f: %.5f    t: %.5f    err: %e\n", f,t,et);
        endif

        fflush(stdout);
    endfor
    
endfunction


function sorTest0(m,n,steps)
    a = 0; % zacetna vrednost Y intervala
    b = 0; % zacetna vrednost X intervala
    hal = (ceil(min(m,n)/2));
    h = 1/hal; % korak v X in Y smeri
    u = @(x,y)0;
    %f = @(x,y)-ifelse(y==(hal*h),3,0).*ifelse(x==(hal*h),3,0);
    f = @(x,y)-1;
    sorTestW(m,n,a,b,h,f,u,steps);
    % tic;
    % [A, iter, err] = sorjw(f,Z,a,b,h,w,maxIter,maxError);
    % t = toc;
    % printf ("\niteracije:   %d \n", iter);
    % printf ("napaka:      %e \n", err(end));
    % printf ("cas:         %f \n\n", t);
    % plot(A,h,a,b);
endfunction




