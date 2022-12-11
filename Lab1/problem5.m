close all
clear all
clc

%% fifth problem
t = 0:0.1:10;
s1 = sin(2.*pi.*0.2.*t);
s2 = sin(2.*pi.*0.425.*t+0.4);
s3 = s1 + s2;

plot(t, s1, 'r--o')
hold on
plot(t, s2, 'b--o')
hold on
plot(t, s3, 'g--o')

title('Question 5')
xlabel('t')
ylabel('s')

legend('s1', 's2', 's3')

axis([0 10 -2.5 2])