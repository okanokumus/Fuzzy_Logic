% https://www.mathworks.com/help/fuzzy/examples/defuzzification-methods.html
% Defuzzification methods
% Defuzzification: making a fuzzy quantity crisp.
% Calculation of a crisp value from a fuzzy value
% roughly, defuzzification is correspondening to threshold in crisp set.
% There many defuzzification methods in the literature.
% help defuzz
% Syntax:  out = defuzz(x,mf,type)
% type can be ;
% centroid: centroid of area
% bisector: bisector of area
% mom: mean value of maximum
% som: smallest (absolute) value of maximum
% lom: largest (absolute) value of maximum

clc
close all
%% Part-1 : Defuzzification methods study:
% Also have a look at Defuzzification demo under Fuzzy Logic Toolbox demos
% of MATLAB ("Start/Toolboxes/Fuzzy Logic/Demos/Defuzzification")
gray = 0.7*[1 1 1];
x = -10:0.01:10;
mf1 = trapmf(x,[-10 -8 -2 2]);
mf2 = trapmf(x,[-5 -3 2 4]);
mf3 = trapmf(x,[2 3 8 9]);
mf = max(0.5*mf2,max(0.9*mf1,0.1*mf3));
figure(1)
plot(x,mf,'r','LineWidth',3);
set(gca,'YLim',[-1 1],'YTick',[0 .5 1])
axis([-10 10 0 1])
title('Defuzzification Methods')
xlabel('x')
ylabel('membership(x)')

% 1. Centroid Defuzzification
% Centroid defuzzification returns the center of area under the curve. If
% you think of the area as a plate of equal density, the centroid is the
% point along the x axis about which this shape would balance.
x1 = defuzz(x,mf,'centroid');
h1 = line([x1 x1],[-0.2 1.2],'Color','g');
t1 = text(x1,0.2,' centroid','Color','green','FontWeight','bold');

% 2. Bisector Method
% The bisector is the vertical line that will divide the region into two
% sub-regions of equal area. It is sometimes, but not always coincident with
% the centroid line.
x2 = defuzz(x,mf,'bisector');
h2 = line([x2 x2],[-0.4 1.2],'Color','b');
t2 = text(x2,0.4,' bisector','Color','b','FontWeight','bold');

% 3,4,5. Middle, Smallest, and Largest of Maximum Methods
% MOM, SOM, and LOM stand for Middle, Smallest, and Largest of Maximum,
% respectively. These three methods key off the maximum value assumed by the
% aggregate membership function. In this example, because there is a plateau
% at the maximum value, they are distinct. If the aggregate membership
% function has a unique maximum, then MOM, SOM, and LOM all take on the same
% value.
x3 = defuzz(x,mf,'mom');
x4 = defuzz(x,mf,'som');
x5 = defuzz(x,mf,'lom');

h3 = line([x3 x3],[-0.7 1.2],'Color','c');
t3 = text(x3,0.3,' MOM','Color','c','FontWeight','bold');
h4 = line([x4 x4],[-0.8 1.2],'Color','k');
t4 = text(x4,0.1,' SOM','Color','k','FontWeight','bold');
h5 = line([x5 x5],[-0.6 1.2],'Color','m');
t5 = text(x5,0.1,' LOM','Color','m','FontWeight','bold');

% Which of these methods is the right one? There's no simple answer. 
% But if you want to get started quickly, generally the centroid method is 
% good enough. Later you can always change your defuzzification method to 
% see if another method works better.
h2.Color = gray;
t2.Color = gray;
h3.Color = gray;
t3.Color = gray;
h4.Color = gray;
t4.Color = gray;
h5.Color = gray;
t5.Color = gray;
h1.Color = 'red';
t1.Color = 'red';
%% Part-2 (mostly depends on the Part-1)
gray = 0.7*[1 1 1];
x = 0:0.01:12;
mf1 = trimf(x,[1 3 5]);
mf2 = trimf(x,[5 7 9]);
mf3 = trapmf(x,[2 4 10 11])*0.5;
subplot(211);plot(x,mf1,x,mf2,x,mf3);
title('Individual MFs')
mf = max(mf2,max(mf1,mf3));
subplot(212);plot(x,mf);
title('Membership Scheme')
x1 = defuzz(x,mf,'centroid');
h1 = line([x1 x1],[-0.2 1.2],'Color','g');
t1 = text(x1,0.2,' centroid','Color','green','FontWeight','bold');

x2 = defuzz(x,mf,'bisector');
h2 = line([x2 x2],[-0.4 1.2],'Color','b');
t2 = text(x2,0.4,' bisector','Color','b','FontWeight','bold');

x3 = defuzz(x,mf,'mom');
x4 = defuzz(x,mf,'som');
x5 = defuzz(x,mf,'lom');

h3 = line([x3 x3],[-0.7 1.2],'Color','c');
t3 = text(x3,0.3,' MOM','Color','c','FontWeight','bold');
h4 = line([x4 x4],[-0.8 1.2],'Color','k');
t4 = text(x4,0.1,' SOM','Color','k','FontWeight','bold');
h5 = line([x5 x5],[-0.6 1.2],'Color','m');
t5 = text(x5,0.1,' LOM','Color','m','FontWeight','bold');


h2.Color = gray;
t2.Color = gray;
h3.Color = gray;
t3.Color = gray;
h4.Color = gray;
t4.Color = gray;
h5.Color = gray;
t5.Color = gray;
h1.Color = 'red';
t1.Color = 'red';