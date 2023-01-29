%% For Loop Basics

clc, clear, close all

%% Section 1: Basic For Loops and Indexing

clc, clear, close all

% 1.1: Create a 'for' loop that sums the values of 1 to the user's input.

    userInput = input('Enter a number: ');
    
    
% 1.2: Create a 'for' loop that sums the values in the following vector 
% 'a'. Note: you must create a 'for' loop; you cannot use functions such 
% as 'sum'.

    a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    
% 1.3: For each of the values in the following vector 'b', print out
% whether they are positive, negative, or zero. Note: you must create a
% 'for' loop.

    b = [1, -7, -10, 2, 0, 4, 9, 1, -6, 0];
    
    
 %% Section 2: Vector Building with For Loops
 
clc, clear, close all

 % 2.1: Put any positive values found in the following vector 'negativeValues' 
 % into the vector 'postiveValues'. Note: you must create a 'for' 
 % loop.
 
    negativeValues = [-1, 1, -2, 2, -3, 3, -4, 4, -5, 5];
    positiveValues = [];
 
 
%% Section 3: Recreating MATLAB Functions

clc, clear, close all

% 3.1: Recreate the 'mean' function in MATLAB using 'for' loops. Note: this
% 'for' loop only needs to work on scalars and vector.



% 3.2: Recreate the 'find' function in MATLAB using 'for' loops. Remember,
% the 'find' function returns all non-zero indices, not the values
% themselves! Note: this 'for' loop only needs to work on scalars
% and vector.



%% Section 4: Advanced For Loops (Moving Window)

clc, clear, close all

% 4.1: Create a 'for' loop that generates the Fibbonacci Sequence with an 
% amount of terms equal to the user's input. The first two terms are both 
% '1' and each additional term is equal to the sum of the previous two 
% terms. For example, the Fibbonacci Sequence with five terms is:
% [1 1 2 3 5].

    userInput = input('Enter the number of terms for the Fibbonacci Sequence');
 
