function [X,Y] = alg641(f,d,x0,y0,N,h)
    % Adams-Bashforth-Moultonova metoda prediktor-korektor 4. reda za sistem
    % Racunanje resitve diferencialne enacbe
    % Podatki:
    %       f        desna stran diferencialne enacbe
    %       d           stevilo enacb
    %       x0          zacetna tocka 
    %       y0          zacetna vrednost resitve
    %       N           stevilo korakov
    %       h           dolzina koraka
    % Rezultat:
    %       Y           priblizek za resitev diferencialne enacbe

    x = x0; X = [x];
    y = y0; Y = [y];
    d(:,1) = f(x,y);
    for i=2:4
        x = x+h; X = [X x];
        y = [exp(-x); 1];   Y = [Y y];
        d(:,i) = f(x,y);
    end

    for i = 5:N+1
       x = x + h; X = [X x];
       yp = y + h*(55*d(4) - 59*d(3) + 37*d(2) - 9*d(1))/24;
        dp = f(x,yp);
       y = y + h*(9*dp + 19*d(4) - 5*d(3) + d(2))/24; Y = [Y y];
        d(:,5) = f(x,y);
        for j = 1:4
            d(:,j) = d(:,j+1);
        end
    end
end
