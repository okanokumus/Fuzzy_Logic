function [ E ] = max_min_composition (P , T )
% max_min_composition function computes max-min production
% composition of two matrices.
% input matrices must be in correct line
[m n] = size(P); % to get size of first matrix
[k l] = size(T); % to get size of second matrix
E = zeros(m,l); % size of the result matrix wiil be like that

% after the min operator results will store in that matrix
after_min = zeros(1,n); % or we can write after_min = zeros(1,k);  

    for i=1:1:m % row
        for j=1:1:l % column
            for x= 1:1:n % or k
                after_min(1,x)= min(P(i,x),T(x,j));              
            end 
            E(i,j) = max(after_min(1,:));
        end
    end    
    
end

