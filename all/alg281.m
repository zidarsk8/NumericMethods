function x = alg281(A,x0,b,n)
    x = x0;
    for i = 1:n
        for j = 1:length(x)
            x(j) = x(j) + 1/A(j,j) * (b(j) - A(j,:)*x0);
        end
        x0 = x;
        x'
    end

end
