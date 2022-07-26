function [underPerformingListOutput, exceptionalListOutput] = Performance_Cougarnet(schoolNamesInput, levelPercentagesInput)
% Task 3 function for Exam 1 Review Problem Version 1.

% Finds the names of the underperforming schools. The names stored in
% 'schoolNamesInput' are only put into 'underPerformingListOutput' if the
% corresponding index position in column 1 of 'levelPercentagesInput' is
% greater than 30. Essentially, the name is only put on the under
% performing list if over 30 percent of the students are below-level in
% reading.
underPerformingListOutput = schoolNamesInput(levelPercentagesInput(:, 1) > 30);

% Finds the names of the exceptionally performing schools. The names stored in
% 'schoolNamesInput' are only put into 'exceptionalListOutput' if the
% corresponding index position in column 1 of 'levelPercentagesInput' is
% less than 15. Essentially, the name is only put on the exceptionally
% performing list if over 15 percent of the students are below-level in
% reading.
exceptionalListOutput = schoolNamesInput(levelPercentagesInput(:, 1) < 15);


end
