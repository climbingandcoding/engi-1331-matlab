%% While Loop Basics

clc, clear, close all

%% Section 1: Basic While Loops

clc, clear, close all

% 1.1: Create a 'while' loop that validates that a user has entered a
% non-negative number.
    
    userInput = ('Enter a number: ');


% 1.2: Edit your above solution to determine the number of attempts it 
% takes for the user to enter a non-negative number.



% 1.3: Edit your above solution to limit the number attempts it takes the
% user to enter a non-negative number to three (3).



%% Section 2: Repeating a Program

clc, clear, close all

% 2.1: Apply a 'while' loop to the following code to allow the user to
% repeat the program.

    % Start given code
    
    userNumber = input('Enter your first number: ');
    UserNumberTimesTwo = userNumber * 2;
    fprintf('You entered: %0.2f and your number scaled by two is %0.2f\n', ...
            userNumber, UserNumberTimesTwo)
        
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

    actualValue = 500;
    acceptablePercentError = 0.05;
    
    userValue = input('Enter a number: ');
    
    
    