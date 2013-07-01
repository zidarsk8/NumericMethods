function [x,iter] = alg351(g,x,e)
    iter = 0;
    gx = g(x);
    while abs(g(x)-x) > e && iter < 1000
        x = g(x);
        iter++;
    end
end
