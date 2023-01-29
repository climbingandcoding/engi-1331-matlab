%% Nested Loop Basics

clc, clear, close all

%% Section 1: Basic Nested Loops and Indexing

clc, clear, close all

% 1.1: Loop through the each row in following matrix and add 1 to every 
% value. Note: you must move through the rows, not the columns.

    testMatrix1 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix1)
    
    [rowSize, colSize] = size(testMatrix1);
    
    for r = 1:rowSize
        
        for c = 1:colSize
            
            testMatrix1(r,c) = testMatrix1(r,c) + 1;
            
        end
        
    end
    
    fprintf('Test Matrix 1:\n')
    disp(testMatrix1)
    
% 1.2: Loop through the each column in following matrix and add 1 to every 
% value. Note: you must move through the columns, not the rows.

    testMatrix2 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix2)
    
    [rowSize, colSize] = size(testMatrix2);
    
    for c = 1:rowSize
        
        for r = 1:colSize
            
            testMatrix2(r,c) = testMatrix2(r,c) + 1;
            
        end
        
    end
    
    fprintf('Test Matrix 2:\n')
    disp(testMatrix2)
    
% 1.3: Is one of the above approaches more efficient than the other?

    % Yes, the second approach is more efficient. MATLAB stores data in
    % column-major order, so indexing the matrix in column-major order is
    % more efficient. See the following example:
    
    % matrix =  [1 2 3
    %            4 5 6
    %            7 8 9] 
    
    % The data would be stored in memory as: [1 4 7 2 5 8 3 6 9]. Accessing
    % the data in column-major order will pull out the values in order
    % (i.e. 1 then 4 then 7 etc.)
    
    % Accessing the data in row-major order would pull out the values out
    % of order (i.e. 1 then 2 then 3 etc.) This results in a lot of jumping
    % around in memory which of course results in a slower runtime.
    
    % Not important for this course, but it is interesting!
    
%% Section 2: The 'ceil' and 'floor' Functions

clc, clear, close all

% 2.1: Loop through the following matrix and round up every value.

    testMatrix3 = magic(5) + rand(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix3)
    
    [rowSize, colSize] = size(testMatrix3);
    
    for r = 1:rowSize
        
        for c = 1:colSize
            
            testMatrix3(r,c) = ceil(testMatrix3(r,c));
            % Alternative: testMatrix3(r,c) = testMatrix3(r,c) -
            % mod(testMatrix3(r,c),1) + 1;
            
        end
        
    end

    fprintf('Test Matrix 3: \n')
    disp(testMatrix3)
    
% 2.2: Loop through the following matrix and round down every value.

    testMatrix4 = magic(5) + rand(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix4)
    
    [rowSize, colSize] = size(testMatrix4);
    
    for r = 1:rowSize
        
        for c = 1:colSize
            
            testMatrix4(r,c) = floor(testMatrix4(r,c));
            % Alternative: testMatrix4(r,c) = testMatrix4(r,c) -
            % mod(testMatrix4(r,c),1);
            
        end
        
    end

    fprintf('Test Matrix 4: \n')
    disp(testMatrix4)

%% Section 3: The 'sort' Function

clc, clear, close all

% 3.1: Use the 'sort' function to sort the following matrix.

    testMatrix5 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix5)
    
    % Remember, the 'sort' function sorts in ascending order by default!
    testMatrix5 = sort(testMatrix5);
    
    fprintf('Test Matrix 5: \n')
    disp(testMatrix5)
    