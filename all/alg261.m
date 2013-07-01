function R = alg261(A)
    R = zeros(size(A));
    for i = 1: length(A)
        R(i,i) = sqrt(A(i,i));
        r = A(i,i+1:end) / R(i,i);
        R(i,i+1:end) = r;
        A(i+1:end,i+1:end) = A(i+1:end,i+1:end) - r'*r;
    end
end
