function [x1,ea,iter] = newtonRaphson(f,x0,es)
iter=0;
max_iter=100;
ea=100;
syms x;
f_sym = sym(f);
df = diff(f_sym, x, 1);
while(1)
    iter=iter+1;
    x1=x0-f(x0)/double(subs(df, x, x0));
    if x0 ~= 0
        ea = abs((x1-x0)/x1)*100;
    end
    x0=x1;
    if iter >= max_iter || es >= ea
        break
    end
end
end

