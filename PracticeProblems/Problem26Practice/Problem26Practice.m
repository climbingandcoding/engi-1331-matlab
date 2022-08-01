function [uniqueIndicator] = Problem26Practice(vectorInput)
% Problem 26 Practice Solution. This problem covers 'for' loops, 'if' 
% statements, 'length', the 'not' (~) operator, and functions.

% This line assumes that the vector is unique. In the next lines, we will
% test this hypothesis and update it if necessary.
uniqueIndicator = 1;

% This line creates a vector from 1 to the length of the 'vectorInput'. If
% the input vector is unique, it will be identical to this vector.
comparisonVector = 1:length(vectorInput);

% Creates the 'for' loop that will go through the entire input vector.
for i = 1:length(vectorInput)

    % This line checks whether 'comparisonVector' is equal to the
    % 'vectorInput' up to the current index 'i'.
    if sum(comparisonVector(i) == vectorInput) ~= 1
        
        uniqueIndicator = 0;
        
    end
    
end


end
