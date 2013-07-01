
function [maks, Y] = maksimum(a,b,ya,yb,alpha0,alpha1,N,m,epsilon)
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


    funkcije;

    [alpha, Y] = strelska(a,b,ya,yb,alpha0,alpha1,N,m,epsilon);
    
 
    if alpha < 0 
        maks = max(ya,yb);
    else
        fd = partFd(alpha,a,ya,N);
        %[linspace(a,b,N+1)' rk(alpha,a,b,ya,N)']
        f = @(x) fd(x)(2);
        maks = sekantna(f,a,b,N,1e-10);
    end

end


