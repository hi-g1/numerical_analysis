% 점 갯수는 임의로 지정
t = linspace(1,5, 10000);

y = (6*t-4)./(8*t) - pi*t/2;
plot(t, y);
xlabel('t');
ylabel('y');
title('Graph of (6*t-4)./(8*t) - pi*t/2');
grid on;