function [newMatrix] = Problem13Practice(matrix, col)
% Problem 13 Practice Solution. This problem covers 'size', 'ones', 'end', 
% the colon operator, the '~' operator, appending, and functions.

% This line finds the size of the input matrix. This will be useful when we
% append the column of '5's onto the input matrix. We do not care about the
% column size, so we can use the '~' operator to discard it.
[rowSize, ~] = size(matrix);

% This line creates the column of '5's we will be appending to the input
% matrix. We need the column to have the same amount of rows as 'matrix' so
% it will be able to be appended onto it.
fivesColumn = 5 * ones(rowSize, 1);

% Creates the matrix that will be returned when the function is called. We
% first start with the first part of 'matrix', which consists of all data
% to the left of the column where the 'fivesColumn' is going to be put.
% Then, we append the 'fivesColumn' at the chosen column position. Finally,
% we append on all the data to the right of 'fivesColumn', which includes
% the column that was in the original spot chosen to be replaced with the
% 'fivesColumn'.
newMatrix = [matrix(:, 1:col-1), fivesColumn, matrix(:, col:end)];


end