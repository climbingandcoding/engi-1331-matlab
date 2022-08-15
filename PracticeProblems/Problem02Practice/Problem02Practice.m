function [volumeCM] = Problem02Practice(radiusCM, heightCM)
% Problem 2 Practice Solution. This problem covers the dot operator and functions.

% Finds the volume in centimeters cubed using the formula v = pi * radius^2
% * height. The dot operator is used to account for a vector of radius and 
% height being entered.
volumeCM = pi .* radiusCM.^2 .* heightCM;


end
