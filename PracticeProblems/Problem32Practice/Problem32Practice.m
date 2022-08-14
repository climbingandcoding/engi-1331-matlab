function [area] = Problem32Practice(f, y, x0a, x0b)
% Problem 32 Practice Solution. This problem covers anonymous functions,
% 'fzero', 'abs', 'integral', and functions.

% This line finds the first intersection point of the given function and
% the horizontal line.
a = fzero(@(x) y - f(x), x0a); 

% This line finds the second intersection point of the given function and
% the horizontal line.
b = fzero(@(x) y - f(x), x0b);

% This line finds the area between the function and the horizontal line.
area = abs(integral(@(x) y - f(x), a, b));


end