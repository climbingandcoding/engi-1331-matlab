function [v] = Problem16Practice(t)
% Problem 16 Practice Solution. This problem covers piecewise functions,
% 'size', 'zeros', 'exp', logicals, the dot operator, and functions.

% This line finds the size of the input 't' so that an appropriate amount
% of 'v' values can be returned.
[rowT, colT] = size(t);

% This line uses the 'zeros' command to create a 'v' output of equal size
% to the 't' input.
v = zeros(rowT, colT, 1);

% This line creates a logical variable for whether a value in 't' is
% greater than or equal to 0 and less than or equal to 10.
logicalOne = t >= 0 & t <= 10;

% This line creates a logical variable for whether a value in 't' is
% greater than 10 and less than or equal to 20.
logicalTwo = t > 10 & t <= 20;

% This line creates a logical variable for whether a value in 't' is
% greater than 20 and less than or equal to 30.
logicalThree = t > 20 & t <= 30;

% This line creates a logical variable for whether a value in 't' is
% greater than 30.
logicalFour = t > 30;

% This line applies the first equation to the appropriate 't' values.
v(logicalOne) = 11 * t(logicalOne).^2 - 5 * t(logicalOne);

% This line applies the second equation to the appropriate 't' values.
v(logicalTwo) = 1100 - 5 * t(logicalTwo);

% This line applies the third equation to the appropriate 't' values.
v(logicalThree) = 50 * t(logicalThree) + 2 * (t(logicalThree) - 20).^(2.5)

% This line applies the fourth equation to the appropriate 't' values. The
% 'exp' command is for taking the exponential value.
v(logicalFour) = 1520 * exp(-0.1 * (t(logicalFour) - 30));


end