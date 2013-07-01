% Ortogonalni polinomi - uporaba algoritma 4.7.1

x = [-2:0.2:2];
k = 5;

alg471

xx = [-2:0.01:2];
[m,nn] = size(xx);
tt = zeros(k,nn);
tt(1,:) = ones(1,nn);
tt(2,:) = xx - sum(xx)/n;
for i = 2:k
   tt(i+1,:) = (xx(:) - a(i+1))'.*tt(i,:) - b(i)'.*tt(i-1,:);
end
