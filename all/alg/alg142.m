function p = alg141(b,n,x)
    %Racunanje vrednosti polinoma - Hornerjeva metoda - Algoritem 1.4.2
    % Podatki
    %    b - vektor koeficientov polinoma
    %    n - stopnja polinoma
    %    x - vrednost neodvisne spremenljivke
    % Rezultat
    %    p - vrednost polinoma

    p = b(n+1)
    for i = n:-1:1
        p = p.*x + b(i);
    end
end
