function x = alg28sor(A,x,b,n,w)
    for i = 1:n
        for j = 1:length(x)
            x(j) = x(j) + 1/A(j,j) * (b(j) - A(j,:)*x);
        end
        x'
    end
end
