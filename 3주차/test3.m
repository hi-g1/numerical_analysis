% 함수
f = @(x) cos(x);

% 매개변수
xi_1 = pi/3;
xi = pi/4;
n = 7; % 도함수 차수 (0~6)

% 중간 근사값 계산
value = Taylor_cal(f, xi_1, xi, n)
approx_0 = sum(value(1));
approx_1 = sum(value(1:2));
approx_2 = sum(value(1:3));
approx_3 = sum(value(1:4));
approx_4 = sum(value(1:5));
approx_5 = sum(value(1:6));
approx_6 = sum(value(1:7));
approx_total = [approx_0, approx_1, approx_2, approx_3 ...
    ,approx_4, approx_5, approx_6]
true_value = f(xi_1);

% 참 백분율 상대오차
approx_error = double(abs(true_value - approx_total)./true_value*100)