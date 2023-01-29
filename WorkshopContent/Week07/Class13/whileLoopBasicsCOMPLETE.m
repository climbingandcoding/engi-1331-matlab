%% While Loop Basics

clc, clear, close all

%% Section 1: Basic While Loops

clc, clear, close all

% 1.1: Create a 'while' loop that validates that a user has entered a
% non-negative number.

    numAttempts = 1; % 1.2
    userInput = input('Enter a number: ');
    
    while (userInput < 0)
        
        userInput = input('Enter a number: ');
        numAttempts = numAttempts + 1; %1.2
        
        % 1.3
        if (numAttempts == 3)
        
            error('Incorrect input three times; please run program again.')
        
        end

    end
    
    fprintf('The non-negative number you entered is: %0.2f\n', userInput)
    fprintf('The number of attempts is: %d\n', numAttempts)

% 1.2: Edit your above solution to determine the number of attempts it 
% takes for the user to enter a non-negative number.

    % See above solution.

% 1.3: Edit your above solution to limit the number attempts it takes the
% user to enter a non-negative number to three (3).

    % See above solution.

%% Section 2: Repeating a Program

clc, clear, close all

% 2.1: Apply a 'while' loop to the following code to allow the user to
% repeat the program.

    % Start given code
    repeat = 1;
    while (repeat == 1)
        userNumber = input('Enter your number: ');
        UserNumberTimesTwo = userNumber * 2;
        fprintf('You entered: %0.2f and your number scaled by two is %0.2f\n', ...
                userNumber, UserNumberTimesTwo)
            
        repeat = menu('Would you like to repeat the program?', 'Yes', 'No');
            
    end
        
    % End given code

% 2.2: Uncomment the following lines of code and see what happens when you
% run them.

    %dataSample = 100;
    %dataCollected = 1;
    %while(dataSample >= 100)
        
        %dataCollected = dataCollected + 1;
        %disp(dataCollected)
        
    %end

%% Section 3: Advanced While Loops

clc, clear, close all

% 3.1: Create a while loop that runs until the difference between the
% actual value and the user's input value is less than the acceptable
% percent error. The formula for percent error is: |(Va - Ve) / Ve| * 100,
% where 'Va' is the actual value (user input) and 'Ve' is the expected
% value. The '||' symbol indicates absolute value.

    expectedValue = input('Enter the expected value: ');
    acceptablePercentError = 2;
    
    actualValue = input('Enter the actual value: ');
    
    while (abs((actualValue - expectedValue) / expectedValue * 100) > acceptablePercentError)
        
            actualValue = input('Enter a number: ');
            
    end
    
    fprintf('The final entered value is: %0.2f and the final percent error is: %0.02f\n', ...
            actualValue, abs((actualValue - expectedValue) / expectedValue * 100))

        