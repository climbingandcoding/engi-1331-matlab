function [numValuesAboveCrit, averageAboveCrit, lowestDeflectVec, lowestLocationVec] = Critical_cougarnet(locationStrings, deflectionVector, criticalValue)
% Task 2 function for Fall 2020 Exam 1 Version 1.


% Creates a logical vector that tells us whether a certain value in
% 'deflectionVector' is greater than the 'criticalValue'. This will be
% useful for finding the four outputs.
logicalAboveCrit = deflectionVector > criticalValue;

% This finds the total number of values in 'deflectionVector' that are
% above the 'criticalValue'. 
numValuesAboveCrit = sum(logicalAboveCrit);

% This finds the mean of all the values in 'deflectionVector' that are
% greater than the 'criticalValue'. Only positions with a logical '1' will
% be included in the mean.
averageAboveCrit = mean(deflectionVector(logicalAboveCrit));

% This line finds the first minimum deflection point in the 'deflectionVector'.
% The 'mink' command returns the 'k' amount of minimum numbers in a vector.
% You could have also used the 'sort' command and indexed the first two
% items in the sorted vector or used the 'min' command to find the first
% minimum number, then removed that value from the vector, and used the
% 'min' command again to find the second minimum value. The transpose
% operator (') is used because the prompt asks for a row vector.
lowestDeflectVec = mink(deflectionVector, 2)';

% These line find sthe locations of the lowest deflection values. The
% 'find' command is not needed because we are directly indexing an array
% with a logical operator.
lowestLocationVec = [locationStrings(lowestDeflectVec(1) == deflectionVector), locationStrings(lowestDeflectVec(2) == deflectionVector)];


end