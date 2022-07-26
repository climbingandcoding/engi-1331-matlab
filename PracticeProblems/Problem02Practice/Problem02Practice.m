function [volumeCM] = Problem2Practice(radiusCM, heightCM)
% Problem 2 Practice Solution. This problem covers functions and the dot
% operator.

% Finds the volume in centimeters cubed using the formula v = pi * radius^2
% * height. The dot operator is used to account for a vector of radius and 
% height being entered.
volumeCM = pi .* radiusCM.^2 .* heightCM;


end
