% 함수
f = @(x) exp(-x);

% 매개변수
xi_1 = 1;
xi = 0.25;
n = 3;

% 중간 근사값 계산
value = Taylor_cal(f, xi_1, xi, n);
approx_0 = sum(value(1));
approx_1 = sum(value(1:2));
approx_2 = sum(value(1:3));
approx_3 = sum(value(1:4));
approx_total = [approx_0, approx_1, approx_2, approx_3]
true_value = f(xi_1);

% 참 백분율 상대오차
approx_error = double(abs(true_value - approx_total)./true_value*100)