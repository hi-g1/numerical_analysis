g=@(x) exp(-x);
x0 = 0;
es = 1e-6;
[xr,ea,iter] = fixp(g,x0,es);
X = ['The root = ', num2str(xr),' (ea = ', num2str(ea),'% in ',...
    num2str(iter), ' iterations)'];
disp(X)