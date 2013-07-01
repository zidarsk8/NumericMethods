x = [1 3 6 10]
f = [3 2 6 1]
[ans,n] = size(x)
[ans,m] = size(f);
if n<m, error('Manjkajo abscise'), end

a = zeros(n,n); a(:,1) = f';
p = a(1,1);
u = t-x(1);
for i = 2:n
   for j = 2:i
      a(i,j) = (a(i,j-1) - a(i-1,j-1))/(x(i) - x(i-j+1));
   end
   p = p + a(i,i)*u;
   u = u*(t-x(i));
end
p

