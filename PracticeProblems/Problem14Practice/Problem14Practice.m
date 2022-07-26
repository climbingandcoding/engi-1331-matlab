function [out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16] = Problem14Practice(matrix, rowChoice, colChoice)
% Problem 14 Practice Solution. This problem covers 'size', 'mean',
% 'median', 'sum', 'min', 'max', and functions.

% Finds the row and column size of 'matrix'.
[out1, out2] = size(matrix);

% Finds the overall average of the matrix. You could also use just one
% 'mean' command with the 'all' keyword.
out3 = mean(mean(matrix));

% Finds the median of each row. The '2' is so the median of the rows is
% taken. Without it, the median of the columns would be taken. 
out4 = median(matrix, 2);

% Finds the sum of each column.
out5 = sum(matrix);

% Finds the average of the chosen row.
out6 = mean(matrix(rowChoice, :));

% Finds the average of the chosen column.
out7 = mean(matrix(:, colChoice));

% Finds the overall minimum value of the matrix. Could have also used just
% one 'min' command with the 'all' command.
out8 = min(min(matrix));

% Finds the maximum value of each column.
out9 = max(matrix);

% Finds the minimum value of each row. Without the '2', the 'min' command
% would find the minimum value in each column. The '[]' is only there
% because the MATLAB syntax requires it.
out10 = min(matrix, [], 2);

% Finds the maximum value of the chosen row and the column containing this
% value.
[out11, out12] = max(matrix(rowChoice, :));

% Finds the maximum value of the chosen column and the row containing this
% value.
[out13, out14] = max(matrix(:, colChoice));

% Finds the maximum value of each column and the corresponding index the
% value is at in those columns.
[maxCols, maxLocs] = max(matrix);

% Finds the overall maximum value of the matrix and its corresponding
% column value. We can use the '~' operator to discard the maximum value
% since we do not need it.
[~, out16] = max(maxCols);

% Finds the row containing the overall maximum value of the matrix.
out15 = maxLocs(out16);


end