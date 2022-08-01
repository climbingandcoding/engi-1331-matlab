function [Check] = Problem28Practice(M)
% Problem 28 Practice Solution. This problem covers 'size', 'for' loops,
% 'if' statements, and functions. I recommend you do not waste your time on
% this problem as it deals with tricky coordinates. You are unlikely to see
% a problem like this on an exam.

% This line assumes that the Sudoku board is a valid solution.
Check = 0;

% This line gets the size of the input matrix. This will be useful when we
% start checking the Sudoku board.
[row,cols] = size(M);

% CHECK 1: Check that ALL value in the each row do not repeat.
% Moves from row to row.

for z = 1:row
    
    % Moves target from one column to the next.
    for y = 1:cols-1
        
        % Checks all other values against target.
        for x = y+1:cols
            
            % Checks whether this index is a match or not.
            if M(z, y) == M(z, x)
                
                % Failed.
                Check = 1;
                
            end
            
        end
        
    end
    
end

% CHECK 2: Check that ALL value in the each columns do not repeat.
% Moves from column to column.

for z = 1:cols
    
    % Moves target from one column to the next.
    for y = 1:row-1
        
        % Checks all other values against target.
        for x = y+1:row
            
            % Checks whether this index is a match or not.
            if M(y, z) == M(x, z)
                
                % Failed.
                Check = 1;
                
            end
            
        end
        
    end
    
end

% CHECK 3: Check that ALL value in the 3 x 3 squares
% (1,1), (1,4), (1,7), (4,1), (4,4), (4,7), (7,1), (7,4), (7,7)
% replace the single loop that moved from column to column or row to row
% with a nested for loop that moves across and down to each starting point
% of my squares.

% Move to the next starting x values of a square.
for sqx = 1:3:7
    
    % Move to the next starting y values of a square.
    for sqy = 1:3:7
        
        VECTOR = [M(sqx, sqy), M(sqx, sqy+1), M(sqx, sqy+2),...
            M(sqx+1, sqy), M(sqx+1, sqy+1), M(sqx+1, sqy+2),...
            M(sqx+2, sqy), M(sqx+2, sqy+1), M(sqx+2, sqy+2)];
        
        row = length(VECTOR);
  
        % Moves target from one column to the next.
        for y = 1:row-1
            
            % Checks all other values against target.
            for x = y+1:row
                
                % Checks whether this index is a match or not.
                if VECTOR(y) == VECTOR(x)
                    
                    % Failed.
                    Check = 1;
                    
                end
                
            end
            
        end
        
    end

    
end
