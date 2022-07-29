function [C] = Problem22Practice(A, B)
% Problem 22 Practice Solution. This problem covers 'for' loops, 'if'
% statements, 'length', logicals, and functions.

% This line finds the length of the vector we will return. Since 'A' and
% 'B' are the same length, you could do the 'length' of either one.
vectorLength = length(A);

% This line preallocates the vector 'C' since we know what the length will
% be. This step is not necessary, but does save time/space.
C = zeros(1, vectorLength);

% This creates the 'for' loop that will loop through all of the items in
% 'A' and 'B'.
for i = 1:1:vectorLength

% This line checks whether the current value of A and B are equal. 
if A(i) == B(i)
    
    C(i) = 0;

% This line checks whether the current value of A - B is positive.
elseif A(i) - B(i) > 0
    
    C(i) = 1;
    
% This line checks whether the current value of A - B is negative. It does
% not really check anything since the only option left is for it to be
% negative.
else
    
    C(i) = -1;
    
end


end