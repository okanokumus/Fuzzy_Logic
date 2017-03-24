% lab assignment 4 
% okan okumus
% 21.03.2017
clc
clear all
close all
%% Question 1
x = -20:0.01:20;
sigma = 5;
c = [ 0.5 1 3];
figure(1)
for i = 1:3
    y = gaussmf(x,[sigma c(i)]);
    subplot(211);plot(x,y)
    hold on
end
title('different "c" values ')
c = 1;
sigma = [ 2 4 6];
for i = 1:3
    y = gaussmf(x,[sigma(i) c]);
    subplot(212);plot(x,y)
    hold on
end
title('different "sigma" values ')
%% Question 2
a = [1 3 5];
b = 2; c = 5; 
figure(2)
for i = 1:3
    y = gbellmf(x,[a(i) b c]);
    subplot(211);plot(x,y)
    hold on
end
title('different "a" values ')
a = 1;
b = [1 3 5]; 
c = 5; 
for i = 1:3
    y = gbellmf(x,[a b(i) c]);
    subplot(212);plot(x,y)
    hold on
end
title('different "b" values ')
%% Question 3
x = -10:0.01:10;
figure(3)
y1 = trimf(x,[0 10 15]); % very young 
y2 = trimf(x,[20 25 30]); % young
y3 = trimf(x,[28 30 35]); % middle ages
y4 = trimf(x,[32 40 50]); % old
y5 = trimf(x,[45 55 65 75 ]); % very old
plot (x,y1,x,y2,x,y3,x,y4,x,y5)
title('age of people')
legend('very young', 'young', 'middle ages', 'old', 'very old')
