fm = @(m,cd,t,v) sqrt(9.81*m/cd)*tanh(sqrt(9.81*cd/m)*t)-v;
% m=95kg, t=9s, v=46m/s, xi=0.2, xu=0.5, error=5%
[cd fx ea iter] = bisect(@(cd) fm(95,cd,9,46),0.2,0.5,5)