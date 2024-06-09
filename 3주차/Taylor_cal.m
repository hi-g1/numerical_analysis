% 테일러 계산 함수
function value = Taylor_cal(f, xi_1, xi, n)
    temp = zeros(1, n+1);
    syms x;
    f_sym = sym(f);
    
    for i = 0:n
        if i == 0
            temp(i+1) = double(subs(f_sym, x, xi));
        else
            df = diff(f_sym, x, i);
            temp(i+1) = double(subs(df, x, xi) * (xi_1 - xi)^i / factorial(i));
        end
    end
    value = temp;
end