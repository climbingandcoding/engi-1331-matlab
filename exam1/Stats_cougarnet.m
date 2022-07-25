function [updatedMatrix] = Stats_cougarnet(matrixInput)
% Task 1 function for Fall 2020 Exam 1 Version 1.


% Sets the 'updatedMatrix' equal to the initial input to prepare to update
% the matrix. This is needed because we want to update the original matrix,
% which means we need the data that was in it initially.
updatedMatrix = matrixInput;

% This takes what was already in 'updatedMatrix' and appends the mean of
% each row to the last column. The '2' in the 'mean' command specifies that
% the mean of each row should be taken. If we had put a '1' or no number
% there, then the mean of each column would have been taken.
updatedMatrix = [updatedMatrix, mean(matrixInput, 2)];

% This takes what was already in 'updatedMatrix' and appends the max of
% each column to the last row. We did not need to put a '1' in the 'mean'
% command because the default for 'max' is to take the max of each
% column, but we could have put a '1' and gotten the same result. A '2' in
% that position would have taken the max of each row.
updatedMatrix = [updatedMatrix; max(updatedMatrix)];


end