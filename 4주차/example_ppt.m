fm = @(m,cd,t,v) sqrt(9.81*m/cd)*tanh(sqrt(9.81*cd/m)*t)-v;
% cd=0.25kg/m, t=4s, v=36m/s, xi=50, xu=200, error=1e-4%
[mass fx ea iter] = falsePosition(@(m) fm(m,0.25,4,36),50,200)