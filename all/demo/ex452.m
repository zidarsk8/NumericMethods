h4 = 10/4;
h8 = 10/8;
%h9 = 10/9;
h12 = 10/12;
h16 = 10/16;
x4 = [-5:h4:5];
x8 = [-5:h8:5];
%x9 = [-5:h9:5];
x12 = [-5:h12:5];
x16 = [-5:h16:5];
xx = [-5:0.01:5];
f4 = 1 ./(1+x4.^2);
f8 = 1 ./(1+x8.^2);
%f9 = 1 ./(1+x9.^2);
f12 = 1 ./(1+x12.^2);
f16 = 1 ./(1+x16.^2);
ff = 1 ./(1+xx.^2);
p4 = polyfit(x4,f4,4);
p8 = polyfit(x8,f8,8);
%p9 = polyfit(x9,f9,9);
p12 = polyfit(x12,f12,12);
p16 = polyfit(x16,f16,16);
%subplot(221)
plot(xx,ff,xx,polyval(p4,xx),'--')
title('n=4')
pause
%subplot(222)
plot(xx,ff,xx,polyval(p8,xx),'--')
title('n=8')
pause
%subplot(224)
plot(xx,ff,xx,polyval(p12,xx),'--')
title('n=12')
pause
%subplot(224)
plot(xx,ff,xx,polyval(p16,xx),'--')
title('n=16')
