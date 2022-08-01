function [numberMinimums, minimum, location] = Problem27Practice(inputMatrix)
% Problem 25 Practice Solution. This problem covers 'size', 'for' loops,
% 'if' statements, and functions.

% This lines gets the size of the input matrix. This will be useful when we
% begin searching for minimum values.
[row, col] = size(inputMatrix);

% These lines establish the first minimu, which we will assume is the first
% index in the 'inputMatrix'.
minimum = inputMatrix(1, 1);
location = [1, 1];

% Creates the loop that goes through all of the rows in the 'inputMatrix'.
for r = 1:row
    
    % Creates the loop that goes through all of the columns in the 
    % 'inputMatrix'.
    for c = 1:col
        
        % This lines checks whether the current index is a minimum value
        % equal to the current minimum value, which at the beginning is the
        % value at index (1, 1). 
        if inputMatrix(r, c) == minimum && (r ~= 1 || c ~= 1)
            
            % Updates only the location. There is no need in updating the
            % minimum value because the current index is equal to the
            % minimum value.
            location = [location; [r c]];
            
        % Checks whether the current index is less than the current
        % minimum.
        elseif inputMatrix(r,c) < minimum
            
            % This line updates the current minimum value since the value
            % at the current index is less than the current minimum value.
            minimum = inputMatrix(r, c);
            
            % This line updates the location value to only hold the
            % location of the current minimum value. All other values
            % stored in 'location', if any, will be deleted.
            location = [r, c];
            
        end
        
    end
    
end

% This line gets the number of minimums found in the input vector. We can
% disregard the column size because we do not need it. You could have also
% used the 'length' function here.
[numberMinimums, ~] = size(location);


end