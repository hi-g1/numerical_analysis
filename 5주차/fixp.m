%{ 
고정점 반복법을 통해 구하려고 하는 건 최종 수렴할지도 모르는 root.
output = x값, 참 백분율 상대오차, iteration
input = g(x), 초기x값?, 상대오차 얼마나?
%}
function [x1,ea,iter] = fixp(g,x0,es)
iter=0;
max_iter=100;
while(1)
    iter=iter+1;
    x1=g(x0);
    if x1 ~= 0
        ea = abs((x1-x0)/x1)*100;
    end
    x0=x1;
    if iter >= max_iter || es >= ea
        break
    end
end
end

