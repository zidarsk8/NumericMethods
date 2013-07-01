function x = alg271(A,L,U,x,b)
    r = (A*x-b);
    max(r)

    y = alg221(L,r);
    e = alg222(U,y);

    x = x - e;
end
