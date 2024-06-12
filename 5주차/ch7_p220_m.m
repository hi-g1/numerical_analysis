g=9.81; v0=55; m=80; c=15; z0=100;
z = @(t) -(z0+m/c*(v0+m*g/c)*(1-exp(-c/m*t))-m*g/c*t);
[xmin,fmin,ea,iter] = goldmin(z,0,8)