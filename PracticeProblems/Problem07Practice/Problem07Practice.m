%% Problem 7 Practice Solution

% This problem covers calling functions and 'fprintf'. All functions have
% already been correctly implemented.

% Calls the 'CylinderInputs' function to get the values of radius,
% height, and the material name.
[radius, height, material] = CylinderInputs();

% Finds the radius in centimeters.
radiusCM = radius * 100;

% Finds the height in centimeters.
heightCM = height * 100;

% Calls the 'CylinderVolume' function to get the volume of the cylinder.
volume = CylinderVolume(radiusCM, heightCM);

% Calls the 'CylinderSurfaceArea' function to get the surface area of the
% cylinder.
surfaceArea = CylinderSurfaceArea(radiusCM, heightCM);

% Prints out the name of the cylinder, the volume, and the surface area.
fprintf(['The volume and the surface area of the %s cylinder are ', ...
         '%0.2e [cm^3] and %0.4e [cm^2], respectively.\n'], material, ...
         volume, surfaceArea);
     
