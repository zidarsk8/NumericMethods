function [A,b] = alg231(A,b)
    % gausova eliminacija
    for i = 1:length(A)
        for j = i+1:length(A)
            faktor = A(j,i)/A(i,i);
            A(j,:) = A(j,:) - A(i,:) .* faktor;
            b(j) = b(j) - b(i) * faktor;
        end
    end
end

