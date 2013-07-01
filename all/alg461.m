function p = alg461(x,f,n,k)
    % Metoda najmanjsih kvadratov - algoritem 4.6.1
    % Aproksimacija funkcije y = f(x), znane v tockah x
    % Podatki:
    %       x       vektor abscis
    %       f       funkcijske vrednosti
    %       n       stevilo vhodnih tock - dolzini vektorjev x in f
    %       k       stopnja aproksimacijskega polinoma
    % Rezultat:
    %       p       koeficienti aproksimacijskega polinoma

    for i = 1:2*k+1
        y(i) = sum(x.^(i-1));
    end
    for i = 1:k+1
        for j = 1:k+1
            A(i,j) = y(i+j-1);    % koeficienti normalnega sistema
        end
        b(i) = sum(f.*x.^(i-1));      % desne strani
    end
    p = flipud(A\b');
end
