%% For Loop Basics

clc, clear, close all

%% Section 1: Basic For Loops and Indexing

clc, clear, close all

% 1.1: Create a 'for' loop that sums the values of 1 to the user's input.

    userInput = input('Enter a number: ');
    
    sum1 = 0;
    for i = 1:userInput
        
       sum1 = sum1 + i;
        
    end
    
    fprintf('The sum is: %d for problem 1.1\n', sum1);
    
% 1.2: Create a 'for' loop that sums the values in the following vector 
% 'a'. Note: you must create a 'for' loop; you cannot use functions such 
% as 'sum'.

    a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    sum2 = 0;
    for i = 1:length(a)
        
       sum2 = sum2 + a(i);
        
    end
    
    fprintf('The sum is: %d for problem 1.2\n', sum2);
    
% 1.3: For each of the values in the following vector 'b', print out
% whether they are positive, negative, or zero. Note: you must create a
% 'for' loop.

    b = [1, -7, -10, 2, 0, 4, 9, 1, -6, 0];
    
    for i = 1:length(b)
        
        if (b(i) < 0)
            
            fprintf('%d is negative.\n', b(i))
 
        elseif (b(i) == 0)
            
            fprintf('%d is zero.\n', b(i))
        
        else
            
            fprintf('%d is positive.\n', b(i))
            
        end
        
    end
    
 %% Section 2: Vector Building with For Loops
 
clc, clear, close all

 % 2.1: Put any positive values found in the following vector 'negativeValues' 
 % into the vector 'postiveValues'. 5Note: you must create a 'for' 
 % loop.
 
    negativeValues = [-1, 1, -2, 2, -3, 3, -4, 4, -5, 5];
    positiveValues = [];
    
    for i = 1:length(negativeValues)
        
        if (negativeValues(i) > 0)
            
            positiveValues = [positiveValues, negativeValues(i)];
            
        end
  
    end
    
    disp('The positive values are:')
    disp(positiveValues)

%% Section 3: Recreating MATLAB Functions

clc, clear, close all

% 3.1: Recreate the 'mean' function in MATLAB using 'for' loops. Note: this
% 'for' loop only needs to work on scalars and vector.

    userInput = input('Enter a scalar or vector: ');
    
    meanCalc = 0;
    for i = 1:length(userInput)
        
        meanCalc = meanCalc + userInput(i);
        
    end
    
    meanCalc = meanCalc / length(userInput);
    
    fprintf('The mean is: %0.2f\n', meanCalc)
        
% 3.2: Recreate the 'find' function in MATLAB using 'for' loops. Remember,
% the 'find' function returns all non-zero indices, not the values
% themselves! Note: this 'for' loop only needs to work on scalars
% and vector. 

    userInput = input('Enter a scalar or vector: ');
    userSearchValue = input('Enter the value you are looking for: ');
    
    locations = [];
    for i = 1:length(userInput)
        
        if (userInput(i) == userSearchValue)
            
            locations = [locations, i];
            
        end
        
    end
    
    disp('The found locations are: ')
    disp(locations)

%% Section 4: Advanced For Loops (Moving Window)

clc, clear, close all

% 4.1: Create a 'for' loop that generates the Fibbonacci Sequence with an 
% amount of terms equal to the user's input. The first two terms are both 
% '1' and each additional term is equal to the sum of the previous two 
% terms. For example, the Fibbonacci Sequence with five terms is:
% [1 1 2 3 5].

    userInput = input('Enter the number of terms for the Fibbonacci Sequence: ');
    fibSequence = [1, 1];
    
    for position = 3:1:userInput
        
        firstTerm = fibSequence(position - 2);
        secondTerm = fibSequence(position - 1);
        nextTerm = firstTerm + secondTerm;
        fibSequence = [fibSequence, nextTerm];
      
    end
    
    disp('The Fibbonacci Sequence is:')
    disp(fibSequence)
    
