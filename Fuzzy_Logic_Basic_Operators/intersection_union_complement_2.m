clc
close all
clear all
%% Question 1
% intersection and union features of discrete fuzzy set
% discrete fuzzy sets:
X=[.4 .5 .1 .7 .9 .3];
Y=[.3 .7  1  0 .2 .9];
Z=[.1 .9 .4  1 .4 .6];

% maximum operator is used for union 
YuZ = max(Y,Z) ; % S-norm operator is used for union
ZnY = min(Z,Y); % T-norm operator is used for intersection
% X/Y means that X intersection with complemet Y. 
% 1.a
a = min(X,(1-YuZ))
% 1.b
b = min(ZnY,(1-X))

% minumum operator is used for intersection
% stem() : Plot discrete sequence data
figure(1)
subplot(1,2,1), stem(a )
title('1.a union of two sets')
subplot(1,2,2), stem(b)
title('1.b intersection of two sets')
%% Question 2
xx = (1:0.01:11);
% plot A 
% six different regions
xa1 = 1:0.01:3;
xa2 = 3:0.01:4;
xa3 = 4:0.01:6;
xa4 = 6:0.01:7;
xa5 = 7:0.01:9;
xa6 = 9:0.01:11;
A1 = zeros(1,length(xa1));
A2 = linspace(0,0.6,length(xa2)); % 0 to 0.6 
A3 = ones(1,length(xa3))*0.6;
A4 = linspace (0.6,1,length(xa4));
A5 = linspace (1,0,length(xa5));
A6 = zeros(1,length(xa6));
xA=unique([xa1 xa2 xa3 xa4 xa5 xa6]);
A=[A1 A2(2:end-1) A3(1:end-1) A4(1:end-1) A5(1:end-1) A6];

figure(2)
subplot(1,3,1), plot(xA,A)

% plot B 
% four different regions
xb1 = 1:0.01:5;
xb2 = 5:0.01:7;
xb3 = 7:0.01:9;
xb4 = 9:0.01:10;
xb5 = 10:0.01:11;
B1 = ones(1,length(xb1));
B2 = linspace(1,0.4,length(xb2));
B3 = ones(1,length(xb4))*0.4;
B4 = linspace(0.4,0,length(xb3));
B5 = zeros(1,length(xb5));
xB = unique([xb1 xb2 xb3 xb4 xb5]);
B=[B1 B2(2:end-1) B3(1:end-1) B4(1:end-1) B5];
subplot(1,3,2), plot(xB,B)
title('B')

% plot C 
% three different regions
xc1 = 1:0.01:3;
xc2 = 3:0.01:8;
xc3 = 8:0.01:11;
C1 = zeros(1,length(xc1));
C2 = linspace(0,1,length(xc2));
C3 = ones(1,length(xc3));
xC = unique([xc1 xc2 xc3]);
C=[C1 C2(2:end-1) C3];
subplot(1,3,3), plot(xC,C)
title('C')

a2 = min(A,max(B,C));
b2 = max(A,max((1-B),C));


figure(3)
subplot(1,2,1), plot(xx,a2)
title('2.a')
subplot(1,2,2), plot(xx,b2)
title('2.b')
