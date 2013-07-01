function [a,iter] = alg341(f,df,a,e)
    iter = 0;
    fa = f(a);
    while abs(fa) > e && iter < 10
        a = a - fa/ df(a);
        fa = f(a);
        iter++;
    end
    if abs(fa) > e
        a = NaN;
    end
end
