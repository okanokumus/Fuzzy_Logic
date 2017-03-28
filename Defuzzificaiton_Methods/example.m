% simple example using 'pass_fuzzy_to_crisp_set' subfunction
clc
close all
x_sampling= 1000; % sampling frequency
x = -12:1/x_sampling:12;
% xi: -12
% xf: 12
% x = 1x((xf-xi)*x_sampling +1) matrix 
% x = 1x24001 matrix
% membership functions and final scheme
mf1 = trimf(x,[-10 -8 -2]);
mf2 = trapmf(x,[-5 -3 2 4]);
mf3 = trimf(x,[2 3 10]);
mf = max(0.5*mf2,max(0.9*mf1,0.1*mf3));
figure('Name','fuzzy sets','NumberTitle','off')
plot(x,mf)

% defuzzification using 'centroid' 
% using defuzz to find positioned at associated variable value x (x1)
x1 = defuzz(x,mf,'centroid');
h1 = line([x1 x1],[-0.2 1.2],'Color','g');
t1 = text(x1,0.2,' centroid','Color','green','FontWeight','bold');
% x1 = -3.2539
% ceil((xp-x(1))*x_interval)
% x(1) = -12
% x(2) = -11.9990
% x(3) = -11.9980
% ...
% ...
% ...
% x(8747) = -3.2539
% ...
% ...
% ...
% x(24001) ) = 12

% so here to get back x1 value using mf(8747).
pass_fuzzy_to_crisp_set(x,mf,x1,x_sampling)