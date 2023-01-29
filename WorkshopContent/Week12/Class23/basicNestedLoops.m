%% Nested Loop Basics

clc, clear, close all

%% Section 1: Basic Nested Loops and Indexing

clc, clear, close all

% 1.1: Loop through the each row in following matrix and add 1 to every 
% value. Note: you must move through the rows, not the columns.

    testMatrix1 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix1)
    
    
    
% 1.2: Loop through the each column in following matrix and add 1 to every 
% value. Note: you must move through the columns, not the rows.

    testMatrix2 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix2)
    
    
    
% 1.3: Is one of the above approaches more efficient than the other?
    
    
    
%% Section 2: The 'ceil' and 'floor' Functions

clc, clear, close all

% 2.1: Loop through the following matrix and round up every value.

    testMatrix3 = magic(5) + rand(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix3)
    
    
    
% 2.2: Loop through the following matrix and round down every value.

    testMatrix4 = magic(5) + rand(5);
        
    fprintf('Original Matrix: \n')
    disp(testMatrix4)
    
    
    
%% Section 3: The 'sort' Function

clc, clear, close all

% 3.1: Use the 'sort' function to sort the following matrix.

    testMatrix5 = magic(5);
    
    fprintf('Original Matrix: \n')
    disp(testMatrix5)
    
    
