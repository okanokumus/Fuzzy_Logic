% introduction to fuzzy logic toolbox
% some membership function commands will be applied
clc
clear all
close all

%% 
% Gaussian membership functions with different parameters
% write 'help gaussmf' to the command window for more info.
% y= gaussmf(x,[sigma c]); 
% analyzing for different sigma and c values
x = -15:0.01:15;
c = 0; % firstly constant c

figure (1)
text(-12,0.9,'different sigma values')
title('Gaussian membership functions')
hold on
for sigma=0.5:0.5:5 % The Gaussian MF needs a non-zero sigma. So we start with 0.5
    y = gaussmf(x,[sigma,c]);
    plot(x,y)
    hold on
    gtext(num2str(sigma)) %  put text(sigma values) wherever you want
end
hold off

figure (2)
sigma = 0.5;
text(-12,0.9,'different c values')
title('Gaussian membership functions')
hold on
for c=-5:1:5 % The Gaussian MF needs a non-zero sigma. So we start with 0.5
    y = gaussmf(x,[sigma,c]);
    plot(x,y)
    hold on
    gtext(num2str(c))
end
hold off
%% 
% Generalized bell membership functions with different parameters
% write 'help gbellmf' to the command window for more info.
% y= gbellmf(x,params); 
% second argument, params is as the vector whose entries are a, b, and c, respectively.
% a defines width of the curve f(x) = 0.5
% b is usually positive (Negative b results in upside down curve)
% b represents the slope of the curve at x= c-a and x=c+a
% c locates the center of the curve
% analyzing for different a, b and c values
% part-1
% different a
% constant b and c
b=4; c=6;
x = 0:0.1:10;
figure (3)
text(0,0.9,'different "a" values')
title('Generalized bell membership functions')
hold on
for a=2:1:6
    y= gbellmf(x,[a b c]);
    plot(x,y)
    hold on
    gtext(num2str(a))
end

% part-2
% different b
% constant a and c
a=2; c=6;
x = 0:0.1:10;
figure (4)
text(0,0.9,'different "b" values')
title('Generalized bell membership functions')
hold on
for b=2:2:12
    y= gbellmf(x,[a b c]);
    plot(x,y)
    hold on
    gtext(num2str(b))
end

% part-3
% different c
% constant a and b
a=2; b=4;
x = 0:0.1:10;
figure (5)
text(0,0.9,'different "c" values')
title('Generalized bell membership functions')
hold on
for c=2:1:7
    y= gbellmf(x,[a b c]);
    plot(x,y)
    hold on
    gtext(num2str(c))
end

%% 
% universe of discourse
% plot “weight of people” icluding the following fuzzy sets :
% “very light”, “light”, “average”, “heavy”, “very heavy”
% trimf will be used
x = 0:0.01:10;
y1 = trimf(x,[0 1 2]); % very light 
y2 = trimf(x,[2 3 4]); % light
y3 = trimf(x,[4 5 6]); % average
y4 = trimf(x,[6 7 8]); % heavy
y5 = trimf(x,[8 9 10]); % very heavy
plot (x,y1,x,y2,x,y3,x,y4,x,y5)
legend('very light', 'light', 'average', 'heavy', 'very heavy')