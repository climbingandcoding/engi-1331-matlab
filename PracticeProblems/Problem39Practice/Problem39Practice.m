function [threeValues] = Problem39Practice(regressionEq, xValues, yValues)
% Problem 39 Practice Solution. This problem covers 'for' loops, 'if'
% statements, 'zeros', 'length', and functions.

% This line preallocates the 'threeValues' output to all '0's in case the
% given equation is empty.
threeValues = zeros(1, 3);

% This creates the 'for' loop that will go through all the given input
% values.
for n = 1:length(xValues)
    
    % This line finds the current regression value at the current 'xValue',
    % which will be used to compare against the current 'yValue' to see if
    % it is above, below, or on the regression.
    Pred = regressionEq(xValues(n)); 
    
    % This statement finds values above the regression.
    if yValues(n) > Pred
        
        threeValues(1) = threeValues(1) + 1; 
    
    % This statement finds values below the regression.
    elseif yValues(n) < Pred
        
        threeValues(2) = threeValues(2) + 1;
     
    % This statement finds values on the regression.
    else
        
        threeValues(3) = threeValues(3) + 1; 
        
    end
    
end


end
