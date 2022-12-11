close all
clear all
clc

%% fourth problem
vector_4 = [];
interval = 1./15;
t = 0;
for i=1:1:15
    vector_4(i) = 4.*cos(2.*pi.*t + 0.2) + 3.*sin(pi.^2 .* t);
    t = t+interval;
end

% max value of the vector
max = max(vector_4);

%min value of the vector 
min = min(vector_4);

%average value of the vector
average = mean(vector_4, 'all');

%elements that are greater than 4
find(vector_4 > 4);

disp('Problem 4:')
vector_4
disp('Max:')
disp(max)
disp('Min:')
disp(min)
disp('Average:')
disp(average)
disp('Items larger than 4:')
disp(find(vector_4 > 4))