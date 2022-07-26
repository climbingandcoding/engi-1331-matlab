function [y] = Problem15Practice(x)
% Problem 15 Practice Solution. This problem covers piecewise functions,
% 'size', 'zeros', 'exp', logicals, the dot operator, and functions.

% This line finds the size of the input 'x' so that an appropriate amount
% of 'y' values can be returned.
[rowX, colX] = size(x);

% This line uses the 'zeros' command to create a 'y' output of equal size
% to the 'x' input.
y = zeros(rowX, colX, 1);

% This line creates a logical variable for whether a value in 'x' is less
% than or equal to '2'. If a value is less than or equal to '2', a logical
% '1' will be stored. Otherwise, a logical '0' will be stored.
logicalOne = x <= 2;

% This line creates a logical variable for whether a value in 'x' is 
% greater than '2' and less than or equal to '4'. If a value is 
% greater than '2' and less than or equal to '4', a logical '1' will be 
% stored. Otherwise, a logical '0' will be stored.
logicalTwo = x > 2 & x <= 4;

% This line creates a logical variable for whether a value in 'x' is
% greater than '4'. If a value is greater than '4', a logical '1' will be 
% stored. Otherwise, a logical '0' will be stored.
logicalThree = x > 4;

% This line applies the first equation to the appropriate 'x' values. The
% 'exp' command is for taking the exponential value.
y(logicalOne) = exp(x(logicalOne) - 1);

% This line applies the second equation to the appropriate 'x' values.
y(logicalTwo) = x(logicalTwo).^2 + x(logicalTwo);

% This line applies the third equation to the appropriate 'x' values.
y(logicalThree) = x(logicalThree) ./ (x(logicalThree) - 7);


end