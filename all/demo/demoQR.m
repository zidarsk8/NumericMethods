% Resevanje sistemov linearnih enacb - Uporaba QR razcepa

N = 256;
AA = rand(N);
bb = rand(N,1);
AA = hadamard(N)
A = AA;
b = bb;

algQR

r = AA*b - bb;
maxerr = max(abs(r))