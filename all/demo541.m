% Primer 5.4.1
% Izracun vrednosti singularnega integrala \int_a^{a+h} f(t)/sqrt{t-a} dt
%

f541 = @(x) cos(x)/2 - x*sin(x);

Int = sqrt(0.1)*cos(0.1);
a = 0;
h = 0.1;
int = 2*(2*f541(a) + f541(a+h))/3;
int = int*sqrt(h)
e = int - Int

h = 0.05;
int = 2*(2*f541(a) + f541(a+h))/3;
int = int*sqrt(h);
int = int + \
        h*(f541(a+h)/sqrt(a+h) + \
        4*f541(a+3*h/2)/sqrt(a+3*h/2) + \
        f541(a+2*h)/sqrt(a+2*h))/6;
e = int - Int


