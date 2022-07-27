function [finalValue, numIterations] = Problem19Practice(num1, num2)
% Problem 19 Practice Solution. This problem covers 'while' loops and
% functions.

% This line calculates the value of 'num1' divided by 'num2'. This result
% is stored in 'finalValue' in case the first iteration (this calculation)
% results in a number less than one.
finalValue = num1 / num2;

% This line sets the 'numIterations' variable to '1' because a calculation
% was performed on the line above.
numIterations = 1;

% This 'while' loop continues as long as 'finalValue' is greater than or
% equal to 1.
while (finalValue >= 1)
    
    % This line doubles the number stored in 'num2'.
    num2 = num2 * 2;
    
    % This line recalculates the value of 'finalValue'.
    finalValue = num1 / num2;
    
    % This line increases the iteration counter by '1'.
    numIterations = numIterations + 1;

end


end