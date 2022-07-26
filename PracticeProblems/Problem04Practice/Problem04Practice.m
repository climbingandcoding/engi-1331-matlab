function [surfaceTension, maximumRadiusM, liquidDensity] = Problem04Practice(maximumRadiusIN, specificGravity, densityWater, gravity)
% Problem 4 Practice Solution. This problem covers functions.

% Finds the maximum radius of the droplet in meters. We do not need the dot
% operator since we are multiplying by a scalar.
maximumRadiusM = maximumRadiusIN * 0.0254;

% Finds the density of the liquid.
liquidDensity = specificGravity * densityWater;

% Finds the surface tension of the droplet.
surfaceTension = maximumRadiusM^2 * gravity * liquidDensity;


end
