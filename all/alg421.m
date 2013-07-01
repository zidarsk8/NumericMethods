function s = alg421(F,X,x)
    s = 0;
    for i = 1:length(F)
        s = s + F(i) * l(X,x,i);
    end
end

function a = l(X,b,i)
    a = 1;
    for j = 1:length(X)
        if i!=j
            a = a * ( ( b-X(j) ) / ( X(i)-X(j) ) );
        end
    end
end 
