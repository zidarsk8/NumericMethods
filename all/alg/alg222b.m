% Obratno vstavljanje - vektorski zapis

b(n) = b(n)/u(n,n);
   for i=n-1:-1:1
      b(i) = (b(i) - u(i,i+1:n)*b(i+1:n))/u(i,i);
   end

