function [Y X] = alg621(f,x0,y0,N,h)
    % Eulerjeva metoda - algoritem 6.2.1
    % Racunanje resitve diferencialne enacbe
    % Podatki:
    %       f621        desna stran diferencialne enacbe
    %       x0          zacetna tocka 
    %       y0          zacetna vrednost resitve
    %       N           stevilo korakov
    %       h           dolzina koraka
    % Rezultat:
    %       Y           priblizek za resitev diferencialne enacbe

    x = x0; 
    y = y0;
    Y = y; 
    X = x;

    for i = 1:N
       y = y + h*f(x,y);
       x = x+h;
       Y = [Y y];
       X = [X x];
    end
end
