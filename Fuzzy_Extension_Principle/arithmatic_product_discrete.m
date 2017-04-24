function [output] = arithmatic_product(AA, BB)
    % AA and BB are the input membership functions that has indivudually 2 rows and 'n' columns 
    % C is the result matrix
    % AA must be in that format [A;Ax] 
    % A = containts the grade of membership between 0 and 1
    % Ax has the elements like that ( 1 5 75 0 ... )
    
    A = AA(1,:);
    Ax = AA(2,:);
    [m, n] = size(A);

    B = BB(1,:);
    Bx = BB(2,:);
    
    [k, l] = size(B);
    no_total_elements = n*l; % the size of the output
    total_matrix = zeros(no_total_elements,2); % output matrix

    ctr = 0;
    for i=1:n
        for j=1:l
            ctr = ctr+1;
            total_matrix(ctr,1) = Ax(i)* Bx(j);
            total_matrix(ctr,2) = min(A(i),B(j));
        end
    end

    % extended matrix is required for 'for' loop.
    total_matrix_extended = [total_matrix;total_matrix];

    % sort the matrix according to the row
    total_matrix = sortrows(total_matrix);

    % discard the repated number in matrix according to rirst column (x)
    [no_unique_members,~, ic] = unique(total_matrix(:,1));

     % it will be after max operation between the same elements 
    output = [unique(total_matrix(:,1)) zeros(size(no_unique_members))];

    for i=1:ctr; % 1 to the size(total_matrix(:,1)) also equals to ctr 
        if (total_matrix_extended(i,1)== total_matrix_extended(i+1,1))
            output(ic(i),2) = max(total_matrix_extended(i,2),total_matrix_extended(i+1,2));
        else
           output(ic(i),:) = total_matrix(i,:);
        end
    end
end

