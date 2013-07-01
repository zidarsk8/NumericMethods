function x = alg281(A,x,b,n)
    for i = 1:n
        for j = 1:length(x)
            x(j) = x(j) + 1/A(j,j) * (b(j) - A(j,:)*x);
        end
        x'
    end

end

