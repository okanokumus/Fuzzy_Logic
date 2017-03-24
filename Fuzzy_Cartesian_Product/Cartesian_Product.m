clc
close all
clear all

% Fuzzy Cartesian Product
% Fuzzy Max-Min Composition
% Fuzzy Max-Product Composition

%% Question 1
% 1.a
% Average current (Amps) = I = [0.4/0.8 + 0.7/0.9 + 1/1 +0.8/1.1 + 0.6/1.2];
% Average voltage (volts) =  V = [0.2/30 + 0.8/45 + 1/60 + 0.9/75 + 0.7/90];
% Initializing Fuzzy sets

I = [0.4  0.7  1  0.8  0.6];
V = [0.2  0.8  1  0.9  0.7];

% Fuzzy Cartesian Product
% P = V x I
% P will be a 5x5 matrix [row(V) column(I)]
for i=1:1:5 % row
    for j=1:1:5 % column
        P(i,j)=min(V(1,i),I(1,j));
    end 
end

% new Fuzzy set for Cost(in dollars) of a transistor C=[0.4/0.5 + 1/0.6 +0.5/0.7]
C=[0.4  1  0.5];

% 1.b
% Fuzzy Cartesian Product
% T = I x C
% T will be a 5x3 matrix [row(I) column(C)]
for i=1:1:5 % row
    for j=1:1:3 % column
        T(i,j)=min(I(1,i),C(1,j));
    end 
end

% 1.c
% E = P o T using max-min composition
% P = V x I and T = I x C so E will be V x C
% E (V,C) = max ( min ( P(V,I) , T (I,C) ) ) 
% E = 5 x 3
E=max_min_composition(P,T);
display('Q1 results : ')
display(P)
display(T)
display(E)

%% Question 2
% speed (in rpm) S = { .2/x1 + .6/x2 + 1/x3 + .7/x4 + .5/x5 } where S is on universe X,
% load (torque) L = { .3/x1 + .4/x2 + .7/x3 + 1/y4 + .7/y5 + .4/y6 + .1/y7 } where L is on universe Y

S = [0.2  0.6   1   0.7  0.5];
L = [0.3  0.4  0.7   1   0.7  0.4  0.1];
% Fuzzy Cartesian Product
% R = S x L
% R will be a 5x7 matrix [row(S) column(L)]
for i=1:1:5 % row
    for j=1:1:7 % column
        R(i,j)=min(S(1,i),L(1,j));
    end 
end
% 2.a
% Fuzzy current, I, that relates elements in the universe Y to elements in Z,
I = [ 0.2 0.4 0.7 0.2 0.5 0.8 1 ];
% 2.b
% Q = IoR using max-min composition
% we need to take the transpose of R because of matrix dimensions
% I(z->y) and R (x->y) so the result will be Q(z,y)
Q_b = max_min_composition(I,R');
Q_c = max_production_composition(I,R');
display('Q2 results : ')
display(R)
display(Q_b)
display(Q_c)
