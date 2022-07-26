%% Problem 6 Practice Solution

% This problem covers 'csvread', 'load', and 'csvwrite'. It is similar to
% problem 4.

% Loads in the radius data stored in a '.csv' file.
radius = csvread('radius.csv');

% Loads in the water droplet data stored in a '.mat' file.
load('Waterdropdata.mat');

% Sets the numerical value of gravity in m/s^2.
G = 9.8;

% Converts the radius from inches to meters.
radius = radius * 0.0254;

% Finds the liquid density of the droplet.
RhoL = SG * RhoW;

% Finds the surface tension of the droplet.
ST = radius^2 * G * RhoL;

% Saves the surface tension variable to a '.csv' file.
csvwrite('SurfaceTension.csv', ST);

