% Okan Okumus
% 02.05.2017
clc
clear all
close all
fis = newfis('gardener');

% firat input
fis = addvar(fis, 'input', 'height of grass', [0 20]); % up to 20 cm
fis = addmf(fis, 'input', 1, 'short', 'trapmf', [0 0 3 7]);
fis = addmf(fis, 'input', 1, 'medium', 'trimf', [2 10 18]);
fis = addmf(fis, 'input', 1, 'tall', 'trapmf', [12 18 20 20]);

% second input
fis = addvar(fis, 'input', 'area of the yard', [0 500]); % up to 500 m^2
fis = addmf(fis, 'input', 2, 'narrow', 'trimf', [0 0 200]);
fis = addmf(fis, 'input', 2, 'medium', 'trimf', [50 250 450]);
fis = addmf(fis, 'input', 2, 'wide', 'trimf', [300 500 500]);
% output
fis = addvar(fis, 'output', 'tip', [0 50]); % up tp 50 TL
fis = addmf(fis, 'output', 1, 'little', 'gauss2mf', [6 1 7 5]);
fis = addmf(fis, 'output', 1, 'medium', 'gbellmf', [8 2 25]);
fis = addmf(fis, 'output', 1, 'much', 'gauss2mf', [6 48 6 50]);
% rulelist of the system. for more info and how construct array to
% write'help addrule' to the command line. If we explain briefly the order 
% [index_of_input1 index_of_input2 index_of_output weight(0-1) AND(1)/OR(2)]
rules = [1 1 1 1 1;
         1 2 2 1 1;
         1 3 3 1 1;
         2 1 2 1 1;
         2 2 2 1 1;
         2 3 3 1 1;
         3 1 2 1 1;
         3 2 3 1 1;
         3 3 3 1 1];
 fis = addrule(fis, rules);
 % rules of the system
 showrule(fis)
 
 % plots
 figure('Name','Inpýt/Output','NumberTitle','off')
 subplot(221);plotmf(fis,'input',1)
 title ('height of grass(cm)')
 subplot(222);plotmf(fis,'input',2)
 title ('area of the yard(m^2)')
 subplot(2,2,[3,4]);plotmf(fis,'output',1)
 title('tip(TL)')
 figure('Name','gardener fuzzy model','NumberTitle','off')
 plotfis(fis)
%  Open Rule Viewer
 ruleview(fis)
%  Open Surface Viewer
 surfview(fis) 