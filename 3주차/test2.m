% 함수
f = @(x) 25*x^3 - 6*x^2 + 7*x - 88;

% 매개변수
xi = 3;
a = 1;
n = 3;

% 중간 근사값 계산
value = Taylor_cal(f, xi, a, n);
approx_0 = sum(value(1));
approx_1 = sum(value(1:2));
approx_2 = sum(value(1:3));
approx_3 = sum(value(1:4));
approx_total = [approx_0, approx_1, approx_2, approx_3];
true_value = f(xi);

% 참 백분율 상대오차
approx_error = double(abs(true_value - approx_total)./true_value*100)