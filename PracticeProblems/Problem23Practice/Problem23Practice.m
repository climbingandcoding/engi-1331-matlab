function [maxValues, maxLocations] = Problem23Practice(vectorInput)
% Problem 23 Practice Solution. This problem covers 'for' loops, 'if'
% statements, 'length', and functions.

% This line finds the length of the input vector.
vectorInputLength = length(vectorInput);

% This line initializes the first max value and its location. This is so we
% have something to compare the second value to.
maxValues = vectorInput(1);
maxLocations = 1;

% Creates the loop that goes through the 'vectorInput'.
for i = 2:1:vectorInputLength
    
    % Checks whether the current value is greater than the max value. If it
    % is, then the max is added and the location is added.
    if (vectorInput(i) > maxValues)
        
        maxValues = vectorInput(i);
        maxLocations = i;
    
    % Checks whether the current value is equal to the current max. If it
    % is, then we do not need to update 'maxValues'; only the
    % 'maxLocations' vector.
    elseif (vectorInput(i) == maxValues)
        
        maxLocations = [maxLocations, i];
        
    end
    
end
  

end