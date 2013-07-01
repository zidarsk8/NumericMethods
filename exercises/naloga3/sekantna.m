function [c, fc] = sekantna(f,a,b,N,epsilon)
    % Podatki
    %	a, b	zacetni tocki iteracije
    %	f       zvezna funkcija 
    %	N	    maksimalno stevilo iteracij
    %	epsilon	kriterij za ugotavljanje nicelne vrednosti funkcije
    % Rezultat
    %	c 	Priblizna vrednost nicle funkcije f
    % 	fc	Vrednost funkcije f v c

    xs = a; 
    fs = f(xs);
    xn = b; 
    fn = f(xn);
    n = 0;
    while (abs(fn) > epsilon) * (n<N)
       c=xs - fs*(xn-xs)/(fn-fs);
       xs = xn; 
       fs = fn;
       xn = c; 
       fn = f(c);
       n = n+1;
    end
    if abs(fn) > epsilon
       c = NaN;
    end

end
