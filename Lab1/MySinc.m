function [y]=MySinc(x)
if x == 0
    y=1;
else
    y=sin(x)./x;
end

