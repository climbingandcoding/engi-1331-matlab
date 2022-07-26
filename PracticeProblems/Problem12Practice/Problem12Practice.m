function [newMatrix] = Problem12Practice(matrix, row)
% Problem 12 Practice Solution. This problem covers the colon operator,
% the '[]' tool, appending, and functions.

% This line creates the row that we will be moving. The colon (:) operator
% allows us to select all columns of the desired 'row'.
rowToMove = matrix(row, :);

% This line makes the selected row empty and deletes it. Since we are
% moving a chosen row to the end of the matrix, we need to delete the row
% from its original location.
matrix(row, :) = [];

% This line creates the 'newMatrix' that will be returned when the function
% is called. The semicolon takes whatever is in 'rowToMove' and appends it
% to the last row in 'matrix'.
newMatrix = [matrix; rowToMove];


end