close all
clear all
clc

%% third problem
omega = [35, 40, 45];
t = [0,0,0];
for i=1:1:length(omega)
    while (exp(1).^1.2 * cos(omega(i) .* t(i)) < 10) && (t(i)^3 < 10)
        t(i) = t(i) +0.01;
    end
end
disp('Problem 3:')
t