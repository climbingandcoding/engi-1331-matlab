%% Problem 11 Practice Solution

% This problem covers 'input', calling functions, and 'fprintf'.

% Gets radius input from user.
radius = input('Enter the radius [m]: ');

% Gets height input from user.
height = input('Enter the height [m]: ');

% Gets material input from user. The 's' is needed because we are taking a
% string input. Without this 's' identifier, the 'input' command will only 
% take numerical inputs.
material = input('Enter the material: ', 's');

% Calls the 'CylinderCalcs' function to get the volume and surface area of
% the cylinder.
[volume, surfaceArea] = CylinderCalcs(radius, height);

% Prints out the name of the material and the volume of the cylinder.
fprintf('\nThe volume of the %s cylinder is %0.2e [cm^3].\n', ...
        material, volume);
    
% Prints out the material and surface area of the cylinder.
fprintf('The surface area of the %s cylinder is %0.2e [cm^2].\n', ...
        material, surfaceArea);

