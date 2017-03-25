clc 
clear all
% an example to use 'artithmatic_product' function
% map the product of two fuzzy sets (A and B)
% A = [0.6/1 1/2 0.8/3]
% B = [0.8/5 1/6 0.7/7]
% C = AxB(arithmatic product)
A = [0.6 1 0.8];
Ax = [1 2 3];
B = [0.8 1 0.7];
Bx = [5 6 7];

% or you can try below matrices
% A = [0.2 1 0.7];
% Ax = [1 2 4];
% B = [0.5 1];
% Bx = [1 2];

AA = [A;Ax];
BB = [B;Bx];
C = arithmatic_product(AA,BB);
D = arithmatic_sum(AA,BB);
