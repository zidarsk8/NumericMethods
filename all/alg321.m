function [c, iter] = alg321(f,a,b,e)
    c = (a+b)/2
    fc = f(c);
    fa = f(a);
    iter = 0;
    while abs(fc) > e && iter < 10 && (b-a)>eps
        if fa*fc < 0
            b = c;
        else
            a = c;
        end
        c = (a+b)/2
        fc = f(c);
        iter++;
    end
end

