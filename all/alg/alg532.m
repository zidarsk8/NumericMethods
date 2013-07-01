% Vrednosti ortogonalnih polinomov

for p = 0:k
   d(p+1) = (x.^p*f')/(t(p+1,:)*t(p+1,:)');
end

c(k+1) = d(k+1)
c(k) = d(k) + c(k+1)*(xx - a(k+2))
if k==1
else
   for j = k-1:-1:1
      c(j) = d(j) + c(j+1)*(xx - a(j+1)) - c(j+2)*b(j);
   end
end
