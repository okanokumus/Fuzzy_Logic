clc
close all
clear all

% Fuzzy Cartesian Product
% Fuzzy Max-Min Composition
% Fuzzy Max-Product Composition

% Question 1
% 1.a
% Initializing Fuzzy sets

A = [0.7  0.3  0.9  0.4  0.6  0.8]; % A[1,6]
B = [0.6  0.5  0.8  0.3]; % B[1,4]

% a

% Fuzzy Cartesian Product
% C= A x B
% C will be a 6X4 matrix [row(A) column(B)]
for i=1:1:6 % row
    for j=1:1:4 % column
        C(i,j)=min(A(1,i),B(1,j));
    end 
end

% D(z->x) and C(x->y) so the composition result will be E(z->y)
display(C)
D=[0.2 0.5 0.8 0.1 0.6 0.7]; % D[1,6]

% 1.b

[m n] = size(D); % to get size of first matrix
[k l] = size(C); % to get size of second matrix
E = zeros(m,l); % size of the result matrix wiil be like that

% after the min operator results will store in that matrix
after_min = zeros(1,n); % or we can write after_min = zeros(1,k);  

    for i=1:1:m % row
        for j=1:1:l % column
            for x= 1:1:n % or k
                after_min(1,x)= min(D(i,x),C(x,j));              
            end 
            E(i,j) = max(after_min(1,:));
        end
    end
    display(E)
