function [Z] = Problem34Practice(functionInput, lineInput, interval)
% Problem 34 Practice Solution. This problem covers 'for' loops, 'if'
% statements, anonymous functions, 'fplot', 'hold', 'round', 'fzero',
% 'unique' and functions.

% This line plots the function on the given interval. This will be useful 
% for identifying the intersection of the function and the line.
fplot(functionInput, interval, '-r')

% This line turns thre 'hold' function on, which allows us to plot multiple
% figures without the previous one being deleted.
hold on

% This line plots the line of the given interval. This will be useful for
% identifying the intersection of the function and the line.
fplot(lineInput, interval, '-b')

% This line creates an anonymous function for the difference between the
% given function and line.
DIFF = @(x) functionInput(x) - lineInput(x);

% This line defines the interval based on the plots we created above.
interval = (4 - (-2)) / 1000;

% This line defines the start value of the search.
Z(1) = round(fzero(DIFF, -2), 3);

% This section counts up the number of intersection points. The variable
% 'a' is the counter variable.
a = 1;

for x = interval(1):interval:interval(2)
     
    INT = round(fzero(DIFF, x), 3);
    
    if INT ~= Z(a) 
        
        a = a + 1;
        Z(a) = INT; 
        
    end 
    
end

Z = unique(Z); 


end