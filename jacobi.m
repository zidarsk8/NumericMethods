function [Z,iter,err] = jacobi(f,Z,x,y,h,maxIter,maxError)
    s = size(Z);
    prev = rand(s);
    iter = 0;
    err = [maxError + 1];
    w = 2 / (1 + pi/s(1));
    a=2:s(1)-1;
    b=2:s(2)-1;
    [aa,bb] = meshgrid(a,b);
    ff =  h.^2 .* f(x+(bb-1).*h,y+(aa-1).*h); 
    while iter++ < maxIter && err(end) > maxError
        Z(a,b) = ( Z(a+1,b)+Z(a-1,b)+Z(a,b+1)+Z(a,b-1) - ff)./4;
        err = [err max(max(abs(Z-prev)))];
        prev = Z;
    endwhile
endfunction


