%% Exam 1 - Spring 2021 - Full Solution 
clc; clear ; close all;


%% Task 1
% Test Input: [10,11,12,13,14,15,16,25,26,27,28,29,30,40,50,40,30,25,20]

% Loads in data ('load' command is for .mat; 'readmatrix' or 'csvread' is
% for .csv files).
load('Exam1Data.mat');

% Takes input from user. We have to specify the 's' because the 'input'
% command by default only takes numerical inputs.
newArea = input('Enter a new area (string): ', 's');

% Appends 'newArea' to 'Area'. This line takes the data that is already in
% 'Area' and adds 'newArea' to the bottom as a new row. Using a comma would
% have added 'newArea' as a column, which is not what we want.
Area = [Area; newArea];

% Takes input from user.
newEnergy = input('Enter a vector of new energy usage values: ');

% Appends 'newEnergy' to 'Energy'. This line takes the data that is already 
% in 'Energy' and adds 'newEnergy' to the bottom as a new row. Using a 
% comma would have added 'newArea' as a column, which is not what we want.
Energy = [Energy; newEnergy];

% Saves the 'Area' and 'Energy' variables.
save('UpdatedData.mat', 'Area', 'Energy');

% Formatting the command window to match sample output (not required). This
% prints two new empty lines to the command window.
fprintf('\n\n');


%% Task 2

% Creates a menu to have user choose an area. Remember, 'areaChoice' stores
% the index of the user's choice; not the actual 'Area' name.
areaChoiceOne = menu('Select an area: ', Area);

% Creates duplicate of 'Area' and removes 'areaChoice' for second area
% selection. We create a duplicate because we do not want to destroy the
% data in 'Area'; we just need a temporary variable to have the user
% select a non-duplicate area.
areaMenuRemoved = Area;
areaMenuRemoved(areaChoiceOne) = [];

% Creates a menu to have user choose a second area. Remember, 
% 'areaChoiceTwo' stores the index of the user's choice; not the actual 
% 'Area' name.
areaChoiceTwo = menu('Select a second area: ', areaMenuRemoved);

% This line makes a function call to 'Stats_cougarnet' in order to find the
% energy data of the area of the user's first selection.
areaOneEnergyData = AreaStats_cougarnet(Energy(areaChoiceOne, :));

% Creates a duplicate of energy and removes the row of energy
% corresponding to the area the user first selected. We have to do this
% because the index of the user's second area choice is one off from the
% 'Energy' data since we removed the first area choice from the data.
% Removing the energy data corresponding to the user's first choice will 
% fix this discrepancy.
energyDuplicate = Energy;
energyDuplicate(areaChoiceOne, :) = [];

% This line makes a function call to 'Stats_cougarnet' in order to find the
% energy data of the area of the user's second selection.
areaTwoEnergyData = AreaStats_cougarnet(energyDuplicate(areaChoiceTwo, :));

% Creates a matrix storing 'areaOneEnergyData' in the first row and
% 'areaTwoEnergyData' in the second row. Using the semicolon creates a new
% row, which is what we want.
areaEnergyMatrix = [areaOneEnergyData; areaTwoEnergyData];

% Saves the 'areaEnergyMatrix' variable.
save('Task2Result.csv', 'areaEnergyMatrix');

% Creates a plot with 'Hour' on the x-axis and the energy data of the first
% selected area on the y-axis. We use the 'scatter' command because the
% data is experimental and not theoretical. Using 'scatter' creates
% individual symbols while using 'plot' creates a line.
scatter(Hour, Energy(areaChoiceOne, :), 'MarkerEdgeColor', 'r');

% Sets x and y labels.
xlabel('Hour [0 - 23.5]');
ylabel('Energy Consumption [kWh]');

% Turns the grid on.
grid on;

% Sets the title as the selected area name.
title(Area(areaChoiceOne));


%% Task 3

% Finds the numerical value of the highest energy consumption and the index
% that value is at.
[highestAverageEnergyUse, highestAverageEnergyIndex] = max(mean(Energy, 2));

% Finds the area with the highest energy consumption.
highestAverageEnergyArea = Area(highestAverageEnergyIndex);

% Finds the time value of the lowest total energy consumption and the index
% that value is at.
[lowestEnergyUse, lowestEnergyUseIndex] = min(sum(Energy));

% Finds the time with the lowest total energy consumption.
lowestEnergyUseTime = Hour(lowestEnergyUseIndex);

% Prints out the area with the highest average energy use and its
% associated value.
fprintf('%s Area has the highest average energy consumption at %.2f [kWh]\n', ...
       highestAverageEnergyArea, highestAverageEnergyUse);
   
% Prints out the time with the lowest total energy use and its associated
% value.
fprintf('%.1f Hour has the lowest total energy consumption at %d [kWh]\n', ...
        lowestEnergyUseTime, lowestEnergyUse);

