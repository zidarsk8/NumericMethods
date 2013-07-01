function [U,A] = alg27qr(A)
    U = zeros(size(A))
    for i=1:length(A)-1
        u = A(i:end,i);
        u(1) = u(1) + sign(u(1))*norm(u);
        U(i:end,i) = u;
        A(i:end,i:end) = A(i:end,i:end) - 2*u* (u'*A(i:end,i:end)/(u'*u));
    end
end
