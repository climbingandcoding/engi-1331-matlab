function [FS] = Problem25Practice(Sq, k, t)
% Problem 25 Practice Solution. This problem covers 'for' loops and
% functions.

% This line creates the variable 'A' found in the formula.
A = Sq(1);

% This line creates the variable 'T' found in the formula.
T = 1 / Sq(2);

% This line finds the length of the 't' input vector to preallocate the
% 'FS' output.
tLength = length(t);

% This line preallocates the 'FS' variable. It is not necessary, but it
% does save time/space.
FS = zeros(1, tLength);

% This line creates the 'for' loop that generates the series.
for n = 1:2:(2*k)
    
    % This line generates the summation part of 'FS' from the formula.
    FS = FS + (1 / n) * sin(2 * n * pi * t / T);
    
end

% This line finishes creating 'FS' by multiplying 'FS' by the constant in
% the formula.
FS = (4 * A / pi) * FS;


end