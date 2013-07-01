function [L,A,P] = alg251(A)
    P = L = eye(size(A));
    U(1,:) = A(1,:);
    
    for i = 1:length(A)
        [_,p] = max(abs(A(i:end,i)));
        p = p+i-1;
        tmp = A(i,:); A(i,:) = A(p,:); A(p,:) = tmp;
        tmp = P(i,:); P(i,:) = P(p,:); P(p,:) = tmp;
        for j = i+1:length(A)
            L(j,i) = A(j,i)/A(i,i);
            A(j,:) = A(j,:) - A(i,:) .* L(j,i);
        end
    end
end


