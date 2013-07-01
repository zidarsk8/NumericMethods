function p = alg141(b,n,x)
    % Izracun vrednosti polinoma - Algoritem 1.4.1. 
    % Podatki
    %    b - vektor koeficientov polinoma
    %    n - stopnja polinoma
    %    x - vrednost neodvisne spremenljivke
    % Rezultat
    %    p - vrednost polinoma

    p = b(1);t = 1;
    for i = 1:n
       t = t*x;
       p = p+t*b(i+1);
    end
end
