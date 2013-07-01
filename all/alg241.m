function [L,A] = alg241(A)
    L = eye(size(A));
    for i = 1:length(A)
        for j = i+1:length(A)
            L(j,i) = A(j,i)/A(i,i);
            A(j,:) = A(j,:) - A(i,:) .* L(j,i);
        end
    end
end

