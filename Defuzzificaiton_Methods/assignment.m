clc
close all
x_sampling= 100; % sampling frequency
x = 0:1/x_sampling:30;

mf1 = trapmf(x,[0 5 15 25]);
mf2 = trimf(x,[10 15 20]);
mf3 = trimf(x,[20 25 30]);
mf = max(0.4*mf1,max(mf2,mf3));
figure('Name','fuzzy sets','NumberTitle','off')
plot(x,mf)
%axis([0 30 0 1])
% defuzzification using 'centroid' 
% using defuzz to find positioned at associated variable value x (x1)
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
pass_fuzzy_to_crisp_set(x,mf,x1,x_sampling);