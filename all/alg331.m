function [c, iter] = alg331(f,a,b,e)
    fa = f(a);
    fb = f(b);
    c = a - fa * (b-a)/(fb-fa);
    fc = f(c);
    iter = 0;
    while abs(fc) > e && iter < 1000 && (b-a)>eps
        if fa*fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        c = a - fa * (b-a)/(fb-fa);
        fc = f(c);
        iter++;
    end
end


