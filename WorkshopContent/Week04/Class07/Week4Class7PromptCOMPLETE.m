%% 'Week4Class7Prompt' Full Solution

% Solution can also be found here: https://github.com/climbingandcoding/engi-1331-matlab/tree/main/Exam1Material/Summer2021Version1Exam1

clc; clear; close all;


%% Task 1

% Loads in data ('load' command is for .mat; 'readmatrix' or 'csvread' is
% for .csv files).
load('Exam1Summer2021.mat');

% Takes size of 'Salary', which will be useful soon.
[salaryRow, salaryCol] = size(Salary);

% Takes input from user.
startYear = input('Enter the starting year: ');
fprintf('\n');

% Creates vector of consecutive years from 'startYear' to 'startYear' + the
% amount of columns in salary - 1 (to account for start year). You could
% also use an explicit for/while loop to do this.
Years = startYear : 1 : startYear + salaryCol - 1;

% Creates menu of choices from 'Names'. Remember that the user's choice
% will set 'nameChoice' equal to the index of that choice; not the choice
% itself!
nameChoice = menu('Select a name: ', Names);

% Creates menu of choices from 'Years'. Remember that the user's choice
% will set 'yearChoice' equal to the index of that choice; not the choice
% itself! 'Years' must also be casted to a string because menu only accepts
% string inputs.
yearChoice = menu('Select a year: ', string(Years));

% Gets the annual salary of a given person in a given year from the
% 'Salary' variable.
userChoiceSalary = Salary(nameChoice, yearChoice);

% Since 'nameChoice' and 'yearChoice' are integer numbers representing the
% index the user chose from the menu, we have to access 'Names' and
% 'Years', respectively, to get the correct output. The '\n' is the escape
% character for a new line.
fprintf(['The annual salary for %s in %d is $%d.\n'], ... 
        Names(nameChoice), Years(yearChoice), userChoiceSalary);


%% Task 2

% Creates a duplicate of 'Salary'. This is used because we do not want to
% edit the original 'Salary' variable in case it is useful to us again in the
% future. This is not a required step, but is a good one to take.
summaryMatrix = Salary;

% Using the comma allows us to append a column to the end of 'Salary'.
% Using a semicolon would append a row to 'Salary'. Using the '2' in the
% 'sum' command adds up the values in the rows. Using a '1' or nothing in
% the second argument would add up the values in the columns.
summaryMatrix = [summaryMatrix, sum(summaryMatrix,2)];

% Using the semicolon allows us to append a row to the end of 'Salary'.
% Using a comma would append a column to 'Salary'. Using the '1' in the
% 'max' command finds the max value in the columns. Putting no number does
% the same thing as putting a '1' since the default for 'max' is the
% columns. Using a '2' would find the max value in the rows. The '[]' is
% there because MATLAB requires it as part of the syntax.
summaryMatrix = [summaryMatrix; max(summaryMatrix,[],1)];

% Saves the 'summaryMatrix' variable.
save('Task2.csv', 'summaryMatrix');


%% Task 3

% Finds the highest annual salary for a given user. This line finds the max
% value in 'Salary' in the row of 'nameChoice', which corresponds to the
% selected person, and all columns (because we must check every year for
% the selected person).
highestAnnualSalary = max(Salary(nameChoice,:));

% Finds the corresponding column, which represents the year, where the
% highest annual salary for the selected person occurs. Recall that the
% 'find' command looks for the non-zero entries in the given search range.
% In this case, find is looking for a logical '1' where an index 'Salary'
% is equal to 'highestAnnualSalary'. Any non-matching indexes will have a
% logical '0' for the search and will not be returned by the 'find'
% command. The name (row) is not important, so we use the '~' to discard
% it.
[~, highestAnnualSalaryCol] = find(Salary == highestAnnualSalary);

% Indexes 'Years' at the corresponding returned column value to return the
% actual year value (such as 2008 or 2012).
highestAnnualSalaryYear = Years(highestAnnualSalaryCol);

% Finds the amount of years with a salary above zero. The 'find' command
% finds the indexes of all salaries above zero and stores them in a vector.
% Then, the 'length' command returns how many items are in that vector.
% When used together, this tells us how many years had a salary above zero.
numYearsSalaryAboveZero = length(find(Salary(nameChoice,:)));

% Finds the average salary for the years with a salary greater than zero.
% 'summaryMatrix' already has the total salary for the chosen person
% stored, so we can access that variable to get that information. Then, we
% just need to divide that number by the amount of years with a salary
% above zero, which was calculated in the line above, to get our answer.
averageSalaryYearsAboveZero = summaryMatrix(nameChoice, end) / numYearsSalaryAboveZero;

% Prints out the name of the chosen person, their highest salary, the
% corresponding year for that salary, the number of years where the
% person made above $0, and the average salary of the years where more
% than $0 were made.
fprintf(['For %s, the highest annual salary was $%d in %d.\n', ...
        'There are %d non-zero years with average salary of $%2.f.\n'], ...
        Names(nameChoice), highestAnnualSalary, highestAnnualSalaryYear, ...
        numYearsSalaryAboveZero, averageSalaryYearsAboveZero);  


%% Task 4

% Calculates the amount paid in taxes for each index in salary. Logical
% operators are used to determine whether a certain part of the formula is
% applied. For example, if a given index has a value of 60000, then the
% third part of the formula (s / 2) will not be applied since the logical
% operator (Salary >= 65000) will evaluate to 0 and is multiplied by
% (Salary / 2) resulting in a final total of 0 for that part of the
% equation. However, the middle part of the equation will evaluate to a
% number since the logical operator (Salary >= 55000 & Salary < 65000)
% evaluates to 1. A similar concept can be found in 'Exam1_Summer21_Version2'.
Taxes = 0 + ((Salary >= 55000 & Salary < 65000) .* (Salary.^0.9)) + ((Salary >= 65000) .* (Salary / 2));

% Finds the max value in 'Taxes'. The first 'max' finds the max value of
% each column and the second 'max' finds the max value of that vector of
% column maxes.
highestTax = max(max(Taxes));

% Finds the index of the highest tax amount.
[highestTaxRow, highestTaxCol] = find(Taxes == highestTax);

% Finds the name of the person who paid the highest tax amount.
highestTaxName = Names(highestTaxRow);

% Finds the year the highest tax amount was paid.
highestTaxYear = Years(highestTaxCol);

% Finds the annual salary of the person who paid the highest tax amount.
highestTaxSalary = Salary(highestTaxRow, highestTaxCol);

% Stores the information about the highest tax in a cell array. Cell arrays
% are used to store information in one spot when the information is made up
% of different data types. Think of it as cells in a vector, where each
% cell is able to contain any data type.
HighTax = {highestTaxName, highestTaxYear, highestTaxSalary, highestTax};

% Saves the 'HighTax' variable.
save('Task4.mat', 'HighTax');

