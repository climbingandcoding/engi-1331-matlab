%% Exam 1 - Version 1 - Fall 2020 - Full Solution
clc; clear; close all;


%% Task 1

% Loads in data ('load' command is for .mat; 'readmatrix' or 'csvread' is
% for .csv files).
load('Exam1_data.mat');

% Takes input from user. We have to specify the 's' because the 'input'
% command by default only takes numerical inputs.
newCity = input('Enter a new city: ', 's');

% Takes input from user.
newDeflections = input('Enter a new vector of deflection values: ');

% Appends the 'newCity' to the 'City' vector. This line takes what was
% already in 'City' and adds 'newCity' to it. Using the comma adds a new
% column while using a semicolon would have added a new row.
City = [City, newCity];

% Appends the 'newDeflections' to the 'Deflections' vector. This line takes
% what was already in 'Deflection' and adds 'newDeflections' to it. Using 
% the comma adds a new column while using a semicolon would have added a 
% new row.
Deflection = [Deflection, newDeflections];

% This line finds the total max of the 'Deflection' matrix. The first 'max'
% command takes the max of each column and the second 'max' command takes
% the max of that vector of maxes. This results in the true max of the
% 'Deflection' matrix.
highestDeflection = max(max(Deflection));

% This line finds the row and column number corresponding to the
% 'highestDeflection' value. The 'find' command looks for non-zero values,
% which in this case will be a logical '1' where 'highestDeflection' is
% located. All indexes in 'Deflection' not equal to 'highestDeflection'
% will have a logical '0' and will not be returned by the 'find' command.
[highestDeflectionRow, highestDeflectionCol] = find(highestDeflection == Deflection);

% We have to index 'City' and 'Location' to return the proper city name and
% location of the deflection point, respectively, because
% 'highestDeflectionCol' and 'highestDeflectionRow' only represent the
% position those items are stored at; not the items themselves.
fprintf(['The overall maximum deflection of %.2f occurs in the city ', ...
         'of %s at %d [m] on the bridge.\n'], highestDeflection, ...
         City(highestDeflectionCol), Location(highestDeflectionRow));

% This line makes a function call to 'Stats_cougarnet' in order to update the
% 'Deflection' matrix.
Deflection = Stats_cougarnet(Deflection);

% Saves the 'Deflection' variable.
save('Exam1_Task1.csv', 'Deflection');


%% Task 2

% Takes input from user.
criticalValue = input('Enter a critical deflection value: ');

% Creates a menu to have user choose a city.
chosenCity = menu('Select a city: ', City);

% This line makes a function call to 'Critical_cougarnet' in order to complete
% task 2.
[numValuesAboveCrit, averageAboveCrit, lowestDeflectVec, lowestLocations] = Critical_cougarnet(Location, Deflection(1:end-1, chosenCity), criticalValue);

% Prints out the total number of deflections above the critical value and
% the average of those values.
fprintf('There are %d deflections above the critical with an average of %.2f\n', ...
        numValuesAboveCrit, averageAboveCrit);

% Saves the 'lowestDeflectVec' and 'lowestLocations' variables.
save('Exam1_Task2.mat', 'lowestDeflectVec', 'lowestLocations');

% Creates a vector storing the deflection points we will plot.
cityDeflectionValues = Deflection(1:end-1, chosenCity);

% Creates a logical array of deflection points greater than the critical
% value.
pointsAboveCritical = cityDeflectionValues > criticalValue;

% Creates a logical array of deflection points less than the critical
% value.
pointsBelowCritical = cityDeflectionValues < criticalValue;

% Allows us to make several plots in one window.
hold on;

% Plots the red markers.
plot(Location(pointsAboveCritical), cityDeflectionValues(pointsAboveCritical), '.r', 'MarkerSize', 20);

% Plots the black markers.
plot(Location(pointsBelowCritical), cityDeflectionValues(pointsBelowCritical), '.k', 'MarkerSize', 20);

% Sets x and y labels.
xlabel('Location [m]');
ylabel('Deflection [mm]');

% Turns the grid on.
grid on;

