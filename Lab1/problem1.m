close all
clear all
clc

%% first problem
x = 1:100;
y = [];
for i=1:1:length(x)
    if mod(x(i),2) == 0
        y=[y x(i)];
    end
end
disp('Problem 1:')
y