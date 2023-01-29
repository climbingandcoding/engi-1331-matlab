function [F] = NewtonGravitationCalcCOMPLETE(m1, m2, r)
% This function takes in the mass of two objects and the distance between
% them and returns the gravitational force between the two objects.

% Creates the constant value 'G'.
G = 6.674 * 10^-11;

% Calculates the output value, 'F'.
F = G * ((m1 * m2) / r^2);

end