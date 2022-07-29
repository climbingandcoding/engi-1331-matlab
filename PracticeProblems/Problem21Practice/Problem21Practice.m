function [PercentDiff, Loc1, Loc2] = Problem21Practice(v)
% Problem 21 Practice Solution. This problem covers 'for' loops, 'if'
% statements, 'abs', 'fprintf', and functions.

% This line needed to be added because we have to initilize 'c'.
c = 0;

% Given in prompt. Needed to add '-1' to account for the fact that we do
% not need to check the last item for a pair since there is nothing after
% it.
for i = 1:length(v)-1

    % Given in prompt. Needed to add the 'abs' because we do not care if
    % the percent difference is negative.
    Pdiff = abs(v(i) - v(i+1)) / v(i);

    % Given in prompt. Had to switch '<' to '>' since we want the percent
    % difference less than 1%.
    if (Pdiff < 0.01)
        
        % Given in prompt.
        c = c + 1;
        Loc1(c) = i;
        Loc2(c) = i + 1;
        PercentDiff(c) = Pdiff;
        
    end
    
end

% Given in prompt.
fprintf('Location 1\tLocation2\tPercent Diff');

% Given in prompt.
for i = 1:c
    
    % Given in prompt. Needed to change the 'c' to 'i' since 'i' is the
    % looping variable we are using.
    fprintf('\n%0.0f\t\t%0.0f\t\t%0.3f', Loc1(i), Loc2(i), PercentDiff(i));
    
end


end