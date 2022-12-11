clear all
close all
clc

%% sixth problem
x = linspace(-2*pi, 2*pi);
y1 = arrayfun(@MySinc, x);
y2 = arrayfun(@sinc, x);

plot(x, y1, 'g')
hold on
plot(x, y2, 'r')

title('Question 6')
xlabel('x')
ylabel('y')
legend('MySinc(x)', 'sinc(x)')

axis([-2*pi 2*pi -0.5 1.5])