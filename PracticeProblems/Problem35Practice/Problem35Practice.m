function [phasesStrings, numLiquid, numGas] = Problem35Practice(lowerTemp, upperTemp, upperEquation, lowerEquation, pointsMatrix)
% Problem 35 Practice Solution. This problem covers phase diagrams, 
% 'for' loops, 'if' statements, and functions.

% This line finds the number of rows in 'pointsMatrix'. This indicates the
% amount of points contained in the given matrix. We do not need the column
% amount because we know from the prompt it is '2'.
[row, ~] = size(pointsMatrix);

% This line creates the output variable 'phaseStrings'. It is defined as
% an empty vector in case the input matrix is empty.
phasesStrings = [];

% This line creates the output variable 'numLiquid'. It is defined as '0'
% in case no points are in the liquid phase.
numLiquid = 0;

% This line creates the output variable 'numGas'. It is defined as '0'
% in case no points are in the gas phase.
numGas = 0;

% This line creates the 'for' loop that will go through all of the given
% points.
for r = 1:row
    
    % This line stores the temperature value for the current point.
    T = pointsMatrix(r, 1);
    
    % This line stores the volume value for the current point.
    V = pointsMatrix(r, 2);
    
    % This section checks which phase the current point is in.
    if T >= lowerTemp && T <= upperTemp && V >= lowerEquation(T) && V <= upperEquation(T)
        
        % A liquid is found, so it is added to the 'phasesStrings' and the
        % counter for the number of liquids is increased by '1'.
        phasesStrings = [phasesStrings; "liquid"];
        numLiquid = numLiquid + 1;
        
    else
        
        % A gas is found, so it is added to the 'phasesStrings' and the
        % counter for the number of gases is increased by '1'.
        phasesStrings = [phasesStrings; "gas"];
        numGas = numGas + 1;
        
    end
    
end


end
