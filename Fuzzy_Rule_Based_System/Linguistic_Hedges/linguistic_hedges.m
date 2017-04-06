% linguistic egdes
% ‘’very’’ , ’’low’’ , ’’slight’’ , ’’more or less’’ , ’’fairly’’ , ’’slightly’’ ,’’ almost’’,
% ’’barely’’ , ’’mostly’’ , ’’roughly’’ , ’’approximately’’ , etc...
clc
clear all 
close all
% two fuzzy set A and B are described in different functions
% Also B is the complement of A
x = -10:0.01:40;
A = 1./(1+0.2*((x-12).^2));
B = (0.2*((x-12).^2))./(1+0.2*((x-12).^2));
figure 
plot(x,A,x,B,'--g');
legend('A','B')
title('Fuzzy sets; A and B')

% Concentrations: Tend to concentrate the elements of a fuzzy
% set by reducing the degree of memberships.
% very A = A^2
% very very A = A^4
% plus A = A^1.25
figure
plot(x,A,x,A.^2,x,A.^4,x,A.^1.25);
legend('A','very A','very very A','plus A')
title('Concentrations of A')

% Dilations: Strech or dilate a fuzzy set by increasing
% membership values.
% slightly A = sqrt(A)
% minus A = A^0.75
figure
plot(x,A,x,A.^0.5,x,A.^0.75);
legend('A','slightly A','minus A')
title('Dilations of A')

% Intensification :(info in 'intensification.png')
figure
% draws a line through to the y(x) =0.5
y = zeros(size(x))+0.5; % because of matrix dimension must be the same size
plot(x,A,x,y)
hold on
for i=-10:0.01:40;
    k = ceil((i+10)*100 +1);
    if (A(k)<=0.5)
       plot(i, 2*(A(k).^2),'.r','LineWidth',0.25)
       hold on
    end
    if (A(k)>=0.5)
       plot(i,1- 2*((1-A(k)).^2),'.r','LineWidth',0.25)
       hold on
    end
end
legend('A','line 0.5','intensfy of A')