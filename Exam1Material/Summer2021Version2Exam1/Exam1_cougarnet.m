%% Exam 1 - Version 2 - Summer 2021 - Full Solution
clear, clc, close all


%% Task 1

% Loads in data ('load' command is for .mat; 'readmatrix' or 'csvread' is
% for .csv files).
load('EXAM1.mat');

% Creates menu of choices from 'YEAR'. Remember that the user's choice
% will set 'yearChoice' equal to the index of that choice; not the choice
% itself! 'YEAR' must also be casted to a string because menu only accepts
% string inputs.
yearChoice = menu('Select a year: ', string(YEAR));

% Creates menu of choices from 'MONTH'. Remember that the user's choice
% will set 'monthChoice' equal to the index of that choice; not the choice
% itself!
monthChoice = menu('Select a month: ', MONTH);

% Assigns the corresponding energy usage by indexing 'ENERGY' at the
% appropriate month/year combination.
correspondingEnergyUsage = ENERGY(yearChoice, monthChoice);

% Since 'monthChoice' and 'yearChoice' are integer numbers representing the
% index the user chose from the menu, we have to access 'MONTH' and
% 'YEAR', respectively, to get the correct output. The '\n' is the escape
% character for a new line.
fprintf('Energy usage in %s %d was %d [kWh].\n\n', ...
        MONTH(monthChoice), YEAR(yearChoice), correspondingEnergyUsage);


%% Task 2

% Sets 'ENERGY' equal to itself at all rows, except the last one, and all
% columns. This removes the last row of the 'ENERGY' variable while keeping
% the rest of the data.
ENERGY = ENERGY(1:end-1, :);

% This takes the sum of each row in 'ENERGY'. The '2' specifies that the
% sum should be taken along the rows. If we had not put a number there or
% put a '1', then the 'sum' common would have taken the sum of each column.
totalEnergyUsed = sum(ENERGY, 2);

% This line finds the year that used the least amount of energy. The 'find'
% command finds the index where 'totalEnergyUsed' is equal to the minimum
% amount of energy used (using the 'min' command). This index is found and then
% used to index 'YEAR' to report back the minimum year, such as 2018 or
% 2019. This line of code could be broken into 2-3 lines of code if you
% prefer to not do it all on one line.
minEnergyYear = YEAR(find(totalEnergyUsed == min(totalEnergyUsed)));

% This line finds the year that used the most amount of energy. The 'find'
% command finds the index where 'totalEnergyUsed' is equal to the maximum
% amount of energy used (using the 'max' command). This index is found and then
% used to index 'YEAR' to report back the maximum year, such as 2018 or
% 2019. This line of code could be broken into 2-3 lines of code if you
% prefer to not do it all on one line.
maxEnergyYear = YEAR(find(totalEnergyUsed == max(totalEnergyUsed)));

% Creates a row vector containing the range of energy used. The comma
% creates a row vector, while using a semicolon would create a column
% vector.
energyUsageRange = [min(totalEnergyUsed), max(totalEnergyUsed)];

% Prints the year with the least/most amount of energy and the corresponding
% years for those energy usages.
fprintf(['The least amount of energy was used in %d with %d [kWh].\n', ...
        'The most amount of energy was used in %d with %d [kWh].\n\n'], ...
        minEnergyYear, energyUsageRange(1), maxEnergyYear, energyUsageRange(2));

    
%% Task 3

% Calculates the total average monthly energy use. The first 'mean' calculates the
% mean of each column (month) and the second 'mean' calculates the mean of
% that vector, which results in the total average monthly energy use.
averageMonthlyUsage = mean(mean(ENERGY));

% Calculates the average monthly energy use for each month (not total).
AVG_E = mean(ENERGY);

% Saves the 'AVG_E' variable.
save('Task3.mat', 'AVG_E');

% Finds the amount of months with an energy usage greater than the average
% energy use. The 'AVG_E > averageMonthlyUsage' creates a logical vector
% with '1's in the indexes containing a month with over the average energy
% use. The 'sum' command adds up these '1's to find the total amount of
% months with an energy usage greater than the average energy use.
amountMonthsGreaterThanAverage = sum(AVG_E > averageMonthlyUsage);

% Creates formatted output. The '%.1f' specifies a floating point number
% (decimal) with a precision of '1' (one number after decimal place).
fprintf(['The average energy use per month is %.1f [kWh]. %d months ', ...
         'per year use greater than the average usage.\n\n'], ...
         averageMonthlyUsage, amountMonthsGreaterThanAverage);
     

%% Task 4 

% Calculates the yearly cost of contract one. The 'sum' command adds up the
% monthly cost found from the formula to give the total yearly cost.
contractOneRates = sum((0.054 * AVG_E) + (0.033547 * AVG_E) + 4.39);

% Calculates the yearly cost of contract two. The 'sum' command adds up the
% monthly cost found from the formula to give the total yearly cost. Logical
% operators are used to determine whether a certain part of the formula is
% applied. For example, if a given index has a value of 1500, the first
% part of the formula (75) will not be applied because (AVG_E > 0 & AVG_E <
% 1001) will evaluate to 0 and it is being multiplied by the 75. However, 
% the middle part of the equation will evaluate to a number since the 
% logical operator (AVG_E >= 1001 & AVG_E <= 2000) evaluates to a 1. A
% similar concept can be found in 'Exam1_Summer21_Version1'.
contractTwoRates = sum(((AVG_E > 0 & AVG_E < 1001) * 75) + ((AVG_E >= 1001 & AVG_E <= 2000) * 150) + ((AVG_E > 2000) .* (150 + 0.0115 * AVG_E)));

% Creates the column vector of the contract rates. The semicolon creates a
% column vector while a comma (or no symbol) would create a row vector.
contractsCompared = [contractOneRates; contractTwoRates];

fprintf(['Contract 1 will cost an estimated $%.2f per year.\n', ...
         'Contract 2 will cost an estimated $%.2f per year. \n'], ...
         contractsCompared(1), contractsCompared(2));

