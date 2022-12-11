close all
clear all
clc

%% second problem
t = [0,0.1,0.2,0.3,0.4];
f = [10,15,20];
x = zeros(length(f), length(t));
for i=1:1:length(f)
    for j=1:1:length(t)
        cos_in = (2 .* pi .* f(i) .* t(j)) + 0.1;
        x(i,j) = 3 .* cos(cos_in);
    end
end
disp('Problem 2:')
x