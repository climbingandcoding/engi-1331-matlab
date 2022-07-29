function [finalFibSeq] = Problem24Practice(initialValues, seqLength)
% Problem 24 Practice Solution. This problem covers 'for' loops and
% functions.

% This line creates a dummy variable for storing the Fibbonacci Sequence.
fibProgress = initialValues;

% Creates the 'for' loop that will be used to generate the Fibbonacci
% Sequence. We start at '3' because we already have the first two values.
for i = 3:1:seqLength
    
    % Uses the rule of generating the Fibbonacci Sequence.
    valueToAdd = fibProgress(i - 1) + fibProgress(i - 2);
    
    % Adds the generated value to the sequence.
    fibProgress(i) = valueToAdd;
    
end

% This line sets the output of the function.
finalFibSeq = fibProgress;


end