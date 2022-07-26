function [volumeM, surfaceAreaM] = Problem01Practice(radiusCM, heightCM)
% Problem 1 Practice Solution. This problem covers unit conversion, 
% functions, and the dot operator.

% Finds the radius in meters. The dot operator is used to account for a
% vector of radius and height being entered.
radiusMeters = radiusCM ./ 100;

% Finds the height in meters. The dot operator is used to account for a
% vector of radius and height being entered.
heightMeters = heightCM ./ 100;

% Finds the volume in meters cubed using the formula pi * radius^2 *
% height.
volumeM = pi .* radiusMeters.^2 .* heightMeters;

% Finds the surface area in meters squared using the formula (2 * pi * 
% radius * height) + (2 * pi * radius^2).
surfaceAreaM = (2 * pi * radiusMeters .* heightMeters) + (2 * pi * radiusMeters.^2);


end
