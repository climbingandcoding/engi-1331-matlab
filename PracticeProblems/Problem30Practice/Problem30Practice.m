function [areaUnderCurve, xMin, yMin, xMax, yMax, xZero] = Problem30Practice(inputCoefficient)
% Problem 30 Practice Solution. This problem covers anonymous functions,
% 'length', 'integral', 'fminbnd', 'integral, 'fzero' and functions.

% This creates the loop that will go through all values as explained in the
% prompt.
for n = 1:length(inputCoefficient)
    
    % This line creates an anonymous function for the formula given in the
    % prompt.
    equationOne = @(x) x.^3 + inputCoefficient(n) * x.^2 + 1;

    % This line calculates the area under the curve for the equation from 0
    % to 10.
    areaUnderCurve(n) = integral(equationOne, 0, 10);

    % This line finds the minimum value of a curve and gives the x-value.
    xMin(n) = fminbnd(equationOne,0,10);
    
    % This line finds the lowest y-value in the given range.
    yMin(n) = equationOne(xMin(n));

    % This line creates the function to find the maximum value of a curve.
    % We flip the equation so that the minimum becomes the maximum.
    equationTwo = @(x) -1*equationOne(x);
    
    % This line finds the maximum value of a curve and gives the x-value.
    xMax(n) = fminbnd(equationTwo, 0, 10);
    
    % This line finds the highest y-value in the given range.
    yMax(n) = equationOne(xMax(n));
    
    % where the function intersect y = 0
    xZero(n) = fzero(equationOne, 0);
    
    
end