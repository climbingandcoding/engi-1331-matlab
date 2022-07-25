function [statsOutputVector] = AreaStats_cougarnet(energyInputVector)
% Task 2 function for Spring 2021 Exam 1.

% Finds the minimum energy value in the 'energyInputVector' variable.
minEnergy = min(energyInputVector);

% Finds the median energy value in the 'energyInputVector' variable.
medianEnergy = median(energyInputVector);

% Finds the average energy value in the 'energyInputVector' variable.
averageEnergy = mean(energyInputVector);

% Finds the maximum energy value in the 'energyInputVector' variable.
maxEnergy = max(energyInputVector);

% Concatenates all of the data together into the 'statsOutputVector'
% variable. Using a comma creates a row vector. If we had used a
% semicolon, then a column vector would have been created, which is not
% what we want.
statsOutputVector = [minEnergy, medianEnergy, averageEnergy, maxEnergy];


end