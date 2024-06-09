fm = @(m,cd,t,v) sqrt(9.81*m/cd)*tanh(sqrt(9.81*cd/m)*t)-v;
% cd=0.25kg/m, t=4s, v=36m/s, xi=40, xu=200, error=default%
[mass fx ea iter] = bisect(@(m) fm(m,0.25,4,36),40,200)