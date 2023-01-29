%% Description:

%{ 

   Week 1 - Class 2 - 08/24/22

   This is a simple MATLAB script that is intended to teach you the basics
   of the programming language. In this file, we will cover the workspace,
   running a program, comments, housekeeping commands, ending the program, 
   semicolons, 'input', 'fprintf', identifiers, single vs. double quotes, 
   and escape characters.

%}

%% Code Part 1:

% Clears the command window.
clc

% Clears the workspace of all variables. Can also be used to just clear
% certain variables by doing 'clear <variable>'.
clear 

% Closes all figures (plots).
close all

%% Code Part 2:

% Takes the input of a user's name.
userName = input('Enter your name: ', 's');

% Takes the input of a user's CougarNet ID.
userCougarNet = input('Enter your CougarNet ID: ');

%% Code Part 3:

% Prints out a header for the data.
fprintf('\nYour output is as follows: \n')

% Prints out the user's name.
fprintf('The user''s name is: %s\n', userName)

% Prints out the user's CougarNet ID.
fprintf('The user''s CougarNet ID is: %d\n', userCougarNet)
