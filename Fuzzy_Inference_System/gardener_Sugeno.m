% sugeno FIS
clc
clear all
close all

% % Explanation about Sugeno FIS
% A typical rule in a Sugeno fuzzy model has the form:
% If Input 1 is x and Input 2 is y, then Output is z = ax + by + c
% For a zero-order Sugeno model, the output level z is a constant (a = b = 0) which can be considered as a special case of Mamdani fuzzy model
% When z is a first-order polynomial, the resulting fuzzy inference system is called a first-order
%%
% NOTE : gardener.fis and this script file must be in the same folder!!!
gardener_mamdani = readfis ('gardener.fis'); % reads mamdani model
gardener_sugeno = mam2sug(gardener_mamdani); % converts to sugeno model
subplot(1,2,1)
gensurf(gardener_mamdani)
title('Mamdani Fuzzy Model')
subplot(1,2,2)
gensurf(gardener_sugeno)
title('Sugeno Fuzzy Model')
%  Open Rule Viewer
 ruleview(gardener_sugeno)
%  Open Surface Viewer
 surfview(gardener_sugeno) 