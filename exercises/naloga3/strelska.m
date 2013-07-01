
function [alpha, Y] = strelska(a,b,ya,yb,alpha0,alpha1,N,m,epsilon)
    % Racunanje resitve robnega problema
    %		y''(x) - x * y'(x0) = 0 ,  y(a)=ya , y(b) = yb
    % Podatki:
    %		a			zacetna tocka 
    %		ya			zacetna vrednost resitve y
    %		b			koncna tocka 
    %		yb			koncna vrednost resitve z
    %		alpha0      zacetni priblizk za z(x0)	
    %		alpha1      zacetni priblizk za z(x0)	
    %       N           stevilo korakov za runge kuta metodo
    %		m			stevilo iteracij
    %       epsilon     maksimalna dovoljena napaka rezultata
    % Rezultat:
    %		alpha		prava vrednost za z(x0)
    %		Y			priblizek za resitev diferencialne enacbe


    funkcije

    % fb(alpha) vrne vrednost yb v tocki b pri z(a) = alpha
    fb = partFb(a,b,ya,N);

    Y = fb(alpha0);
    ys = Y(1,end);

    Y = [Y fb(alpha1)];
    yn = Y(1,end);
    j = 1;
    while (abs(yn-yb)>epsilon) && (j<m)
        j = j+1;
        alpha = alpha0 + (alpha1 - alpha0)*(yb-ys)/(yn-ys);
        Y = [Y fb(alpha)];
        ys = yn;
        yn = Y(1,end);
        alpha0 = alpha1;
        alpha1 = alpha;
    end
        
    if abs(yn-yb)>epsilon
        alpha = NaN;
    end

end

