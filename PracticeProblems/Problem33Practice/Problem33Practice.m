function [leftSum, rightSum, midPointSum, exactIntegral] = Problem33Practice(functionHandle, numRec, interval)
% Problem 33 Practice Solution. This problem covers 'for' loops,
% 'integral', and functions.

% This line defines the upper bound of the integral.
b = interval(2);

% This line defines the lower bound of the integral.
a = interval(1);

% This line defines the width of each rectangle.
width = (b - a) / numRec;

% This line calculates the exact integral of the given function from 'a' to
% 'b'.
exactIntegral = integral(functionHandle, a, b);

% This section calculates the left-hand Riemann sum.
leftSum = 0;

for i = 1:numRec
    
    leftSum = leftSum + (width * functionHandle(a + (i - 1) * width));
    
end

% This section calculates the right-hand Riemann sum.
rightSum = 0;

for k = a+width:width:b
    
    rightSum = rightSum + (width * functionHandle(k));
    
end

% This section calculates the mid-point Riemann sum.
midPointSum = 0;

for k = a+width/2:width:b-width/2
    
    midPointSum = midPointSum + (width * functionHandle(k));
    
end


end