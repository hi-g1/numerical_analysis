% 변환 전
tstart=0;tend=20;ni=8;
t(1)=tstart
y(1)=12+6*cos(2*pi*t(1)/(tend-tstart))
for i=2:ni+1
    t(i)=t(i-1)+(tend-tstart)/ni
    y(i)=12+6*cos(2*pi*t(i)/(tend-tstart))
end

% 변환 후
tstart=0;tend=20;ni=8;
t = tstart:(tend-tstart)/ni:tend
y = 12+6*cos(2*pi*t/(tend-tstart))


%https://kr.mathworks.com/help/matlab/math/array-indexing.html


