function [c, iter] = alg332(f,a,b,e)
    fa = f(a);
    fb = f(b);
    iter = 0;
    while abs(fa) > e && iter < 1000
        c = a - fa * (b-a)/(fb-fa);
        a = b;
        fa = fb;
        b = c;
        fb = f(b);
        iter++;
    end
end


