function [radiusM, heightM, material] = Problem8Practice()
% Problem 8 Practice Solution. This problem covers inputs and functions. 
% It is the same problem as problem 3.

% Handles the input from the user directly to the function. We will likely
% never use this is in ENGI 1331.
import IO_Handler.*;

% Takes the input of the radius directly from the user.
radiusM = input('Enter a radius [m]: ');

% Takes the input of the height directly from the user.
heightM = input('Enter a height [m]: ');

% Takes the input of the material directly from the user. The 's' is needed
% because the 'input' command only accepts numerical entries unless the 's'
% string identifier is present.
material = input('Enter a cylinder material: ', 's');


end
