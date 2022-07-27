function [summaryVector] = Problem20Practice(inputNumber)
% Problem 20 Practice Solution. This problem covers 'if' statements,
% 'disp', 'abs', 'while' loops, and functions.

% These lines check whether the input is less than or equal to '0'. If it
% is, then the absolute value of the number is assumed and the user is
% notified.
if (inputNumber <= 0)
    
    disp('Value is less than 0. Absolute value assumed.');
    inputNumber = abs(inputNumber);

end

% Creates a copy of the 'inputNumber' so the data stored in it is not
% destroyed. We will need this data for our output.
inputNumberCopy = inputNumber;

% This line sets the iteration count to '0' since no calculations have
% occurred yet.
iterationCount = 0;

% This 'while' loop continues until the calculated value is within 1% of
% the sequence limit or the process has been executed 5 times.
while ~(abs(inputNumberCopy - 1) <= 0.01 || iterationCount == 5)
    
    % This line takes the square root of the input value.
    inputNumberCopy = sqrt(inputNumberCopy);

    % This line increases the iteration count by 1.
    iterationCount = iterationCount + 1;

end

% This line creates a [1x3] row vector containing the initial value, the
% value after the process concludes, and the number of times the process
% executed.
summaryVector = [inputNumber, inputNumberCopy, iterationCount];


end