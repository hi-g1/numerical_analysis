% 온라인 매트랩 환경에선 한 M파일 내에서 다음과 같이 실행 가능

function [min_y,max_y,gap] = findGap(f,start, fin)
    % linspace의 num은 default(100)로 지정
    t = linspace(start,fin, 100);
    value = zeros(size(t));
    value = (f(t));
    max_y = max(value);
    min_y = min(value);
    gap = max_y - min_y;
    plot(t,f(t));
    grid
end

fa = @(t) 8*exp(-0.25*t).*sin(t-2); % 범위 0~6pi
fb = @(x) exp(4*x).*sin(1./x); % 범위 0.01~0.2
fc = @(x) humps(x); % 범위 0~2

% fa=>a번, fb=>b번, fc=c번
[min_y,max_y,gap_is] = findGap(fc, 0, 2)