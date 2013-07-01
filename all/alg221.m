function x = alg221(A,b) 
    % Direktno vstavljanje
    x = zeros(length(b),1);
    for i = 1:length(b)
        x(i) = (b(i) - A(i,1:i-1)*x(1:i-1) ) / A(i,i);
    end
end
