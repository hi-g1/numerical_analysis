% 온라인 매트랩 환경에선 한 M파일 내에서 다음과 같이 실행 가능

function dam = calculateDam(x)
    dam = -5/6*(singFunc(x,0,4)-singFunc(x,5,4)) ...
        + 15/6*singFunc(x,8,3) + 75*singFunc(x,7,2) + 57/6*x.^3 - 238.25*x;
end

function singValue = singFunc(x,a,n)
    % 벡터인 경우 각 요소별로 반복문이나 아래 방법처럼 계산!
    singValue = (x > a).*((x-a).^n);
end

x = linspace(0,10);
y = calculateDam(x);
plot(x,y,'--')
grid
