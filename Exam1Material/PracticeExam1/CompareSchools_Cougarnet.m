function [percentReadingLevelOutput, schoolNamePercentOutput] = CompareSchools_Cougarnet(schoolNamesInput, readingDataInput)
% Task 2 function for Exam 1 Review Problem Version 1

% Finds the percent of students below target reading level. The second
% column in 'readingDataInput' contains the amount of students below
% reading level and the first column in 'readingDataInput' contains the
% amount of students in a particular school. Dividing the two gives us the
% percentage of students at each school below the target reading level.
% Multiplying this result by '100' makes it a percentage.
percentBelowLevel = (readingDataInput(:, 2) ./ readingDataInput(:, 1)) .* 100;

% Finds the percent of students at target reading level. The third
% column in 'readingDataInput' contains the amount of students at
% reading level and the first column in 'readingDataInput' contains the
% amount of students in a particular school. Dividing the two gives us the
% percentage of students at each school below the target reading level.
% Multiplying this result by '100' makes it a percentage.
percentAtLevel = (readingDataInput(:, 3) ./ readingDataInput(:, 1)) .* 100;

% Finds the percent of students above target reading level. The fourth
% column in 'readingDataInput' contains the amount of students above
% reading level and the first column in 'readingDataInput' contains the
% amount of students in a particular school. Dividing the two gives us the
% percentage of students at each school below the target reading level.
% Multiplying this result by '100' makes it a percentage.
percentAboveLevel = (readingDataInput(:, 4) ./ readingDataInput(:, 1)) .* 100;

% Creates the output matrix 'percentReadingLevelOutput' by concatenating
% the three calculated percentages into a three-column matrix.
percentReadingLevelOutput = [percentBelowLevel, percentAtLevel, percentAboveLevel];

% Finds the school with the highest percentage of students below target
% reading level. The only position in 'schoolNamesInput' that will be
% indexed is the position that corresponds to where 
% 'max(percentBelowLevel) == percentBelowLevel' is true.
highestPercentBelowSchool = schoolNamesInput(max(percentBelowLevel) == percentBelowLevel);

% Finds the school with the highest percentage of students at target
% reading level. The only position in 'schoolNamesInput' that will be
% indexed is the position that corresponds to where 
% 'max(percentAtLevel) == percentAtLevel' is true.
highestPercentAtSchool = schoolNamesInput(max(percentAtLevel) == percentAtLevel);

% Finds the school with the highest percentage of students above target
% reading level. The only position in 'schoolNamesInput' that will be
% indexed is the position that corresponds to where 
% 'max(percentAboveLevel) == percentAboveLevel' is true.
highestPercentAboveSchool = schoolNamesInput(max(percentAboveLevel) == percentAboveLevel);

% Creates the output matrix 'schoolNamePercentOutput' by concatenating
% the three found school names into a three-row matrix.
schoolNamePercentOutput = [highestPercentBelowSchool; highestPercentAtSchool; highestPercentAboveSchool];


end