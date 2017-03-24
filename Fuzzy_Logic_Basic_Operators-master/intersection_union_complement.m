clc
close all
clear all
%% Question 1
% intersection and union features of discrete fuzzy set
% discrete fuzzy sets:
X=[.2 .4 .5 .1 .9 .5 1];
Y=[.5 .1 1 0 .5 .9 .7];
% 1.a
% maximum operator is used for union 
XuY = max(X,Y) ; % S-norm operator is used for union
% 1.b
% minumum operator is used for intersection
XnY = min(X,Y) ; % T-norm operator is used for intersection
% stem() : Plot discrete sequence data
figure(1)
subplot(1,2,1), stem(XuY )
title('1.a union of two sets')
subplot(1,2,2), stem(XnY)
title('1.b intersection of two sets')

%% Question 2
% to solve this question, some function in "Membership Functions in the Fuzzy Logic Toolbox"
% is used
% complement, intersection and union features of continuous fuzzy set
xx = (0:0.01:10); % range

% continuous fuzzy sets
% mf refers to "membership function"
% our A and C sets are out of normal using of trapezoidal membership function
% we need two argument to construct these sets so 2 inputs are selected out of
% specified range
A=trapmf(xx,[-4 -3 5 9]); % trapezoidal membership function (trapmf) (-4 and -3 are arbitrarily selected for out of range)
B=trimf(xx,[2 3 7]); % triangular membership function (trimf)
C=trapmf(xx,[2 6 10 15]);
% plot fuzzy sets
figure(2)
subplot(1,3,1), plot(xx,A)
title('A')
subplot(1,3,2), plot(xx,B)
title('B')
subplot(1,3,3), plot(xx,C)
title('C')

%2.a
AnB_u_AnC=min(A,max(B,C));
%2.b
% complement of a cont. sets: complement(A)= 1-A
b=max((1-A),min((1-B),(1-C)));

figure(3)
subplot(1,2,1), plot(xx,AnB_u_AnC)
title('2.a')
subplot(1,2,2), plot(xx,b)
title('2.b')
