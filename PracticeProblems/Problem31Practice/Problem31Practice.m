function [xIntersectionH, xIntersectionL, areaIntersection] = Problem31Practice(functionOne, functionTwo, yHorizontalValue)
% Problem 31 Practice Solution. This problem covers anonymous functions,
% 'for' loops, 'if' statements, 'fzero', 'integrals', and functions.

% Creates the for loop that goes through all the given y-values. This is to
% account for if more than one y-value is given.
for n = 1:length(yHorizontalValue)
    
    % This line creates the equation that represents the first function and
    % the horizontal lines intersection.
    equationOne = @(x) functionOne(x) - yHorizontalValue(n);
    
    % This line finds where the intersection of the line and the function
    % occurs.
    xIntersectionH(n) = fzero(equationOne, 10);
    
    % This line creates the equation that represents the first function and
    % second functions intersection.
    equationTwo = @(x) functionOne(x) - functionTwo(x);
    
    % This line finds where the intersection of the line and the function
    % occurs.
    xIntersectionL(n) = fzero(equationTwo, 10);
    
    % This 'if' statement is for the case where the 'xIntersectionH' is
    % under the 'xIntersectionL' point.
    if xIntersectionH(n) < xIntersectionL(n)
        
        % This line finds the area between the intersection points.
        areaIntersection(n) = integral(equationOne, xIntersectionH(n), xIntersectionL(n)); 
    
    % If the above 'if' statement was not true, then this one must be.
    else
        
        % This line finds the area between the intersection points.
        areaIntersection(n) = integral(equationOne, xIntersectionL(n), xIntersectionH(n));
        
    end
    
end


end
