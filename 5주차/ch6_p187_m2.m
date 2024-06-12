g=@(x) exp(-x)-x;
x0 = 0;
es = 1e-6;
[xr,ea,iter] = newtonRaphson(g,x0,es)