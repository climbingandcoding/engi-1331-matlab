%% Exam 1 - Version 1 - Review Problem - Full Solution 
clc; clear; close all;


%% Task 1

% Loads in data ('load' command is for .mat; 'readmatrix' or 'csvread' is
% for .csv files).
load('School_Data.mat');

% This line finds the total amount of elementary schools in the district.
% You could have also used 'size' and discarded the column amount.
numElementarySchools = length(School_Names);

% This line finds the total number of kindergarteners in the district. The
% colon operator (:) tells MATLAB to index 'Reading_Data' at all rows and
% the '1' specifies the first column, which is where the data for the
% amount of students at a particular school is stored.
numKindergarteners = sum(Reading_Data(:, 1));

% This line finds the average number of kindergarteners per elementary
% school.
averageNumKindergarteners = numKindergarteners / numElementarySchools;

% Outputs all of the data found in task 1 to the command window. The 'ceil'
% command is used to match the sample output. It is not necessary to use
% this, and may not even be technically correct, but it does make the
% output match the sample output exactly.
fprintf(['There are %d elementary schools in the district a total of ', ...
         '%d kindergarteners.\nThere is an average of %d students ', ...
         'per school.\n\n'], numElementarySchools, numKindergarteners, ...
         ceil(averageNumKindergarteners));


%% Task 2

% Calls the 'CompareSchools_Cougarnet' function to complete task 2. The
% first output of the function (percentReadingLevelOutput) is saved to the 
% 'percentReadingLevels' variable and the second output of the function 
% (schoolNamePercentOutput) is saved to the 'schoolNamePercents' variable.
[percentReadingLevels, schoolNamePercents] = CompareSchools_Cougarnet(School_Names, Reading_Data);

% Saves the 'percentReadingLevels' and 'schoolNamePercents' variables.
save('Task2_Results.mat', 'percentReadingLevels', 'schoolNamePercents');

% Outputs the names of the schools with the highest number of students
% below-level, at-level, and above-level in reading.
fprintf(['%s has the highest number of kindergarteners below the target ', ...
         'reading level.\n%s has the highest number of kindergarteners ', ...
         'on the target reading level.\n%s has the highest number of ', ...
         'kindergarteners above the target reading level.\n'], ...
         schoolNamePercents(1), schoolNamePercents(2), schoolNamePercents(3));


%% Task 3

% Calls the 'Performance_Cougarnet' function and stores the results of the
% underperforming and exceptionally performing schools.
[underPerformingSchools, exceptionallyPerformingSchools] = Performance_Cougarnet(School_Names, percentReadingLevels);

% Saves the 'underPerformingSchools' and 'exceptionallyPerformingSchools' 
% variables.
save('Task3_Results.mat');


%% Task 4

% Creates a menu to have user choose an underperforming school.
underPerformingSchoolChoice = menu('Choose an underperforming school: ', underPerformingSchools);

% Finds the amount of students that are below reading level for the chosen
% school. First, 'Reading_Data' is accessed at the index where the chosen
% school corresponds to. The '2' is because the data for below reading
% level students is stored in the second column of 'Reading_Data'. Next,
% the amount of students below reading level for the next five years is
% generated.
belowLevelData = Reading_Data(School_Names == underPerformingSchools(underPerformingSchoolChoice), 2);
belowLevelData = belowLevelData : -2 : belowLevelData - 10;

% Finds the amount of students that are at reading level for the chosen
% school. First, 'Reading_Data' is accessed at the index where the chosen
% school corresponds to. The '3' is because the data for at reading
% level students is stored in the third column of 'Reading_Data'. Next,
% the amount of students at reading level for the next five years is
% generated.
atLevelData = Reading_Data(School_Names == underPerformingSchools(underPerformingSchoolChoice), 3);
atLevelData = atLevelData : 1 : atLevelData + 5;

% Finds the amount of students that are above reading level for the chosen
% school. First, 'Reading_Data' is accessed at the index where the chosen
% school corresponds to. The '4' is because the data for above reading
% level students is stored in the fourth column of 'Reading_Data'. Next,
% the amount of students above reading level for the next five years is
% generated.
aboveLevelData = Reading_Data(School_Names == underPerformingSchools(underPerformingSchoolChoice), 4);
aboveLevelData = aboveLevelData : 1 : aboveLevelData + 5;

% Creates the year vector for the x-axis.
yearVector = 2020 : 1 : 2025;

% Allows us to make several plots in one window.
hold on;

% Plots the below level data.
plot(yearVector, belowLevelData, 'ro');

% Plots the at level data.
plot(yearVector, atLevelData, 'b^');

% Plots the above level data.
plot(yearVector, aboveLevelData, 'gs');

% Sets x and y labels.
xlabel('Year');
ylabel('Number of Students');

% Turns the grid on.
grid on;

% Sets the title of the graph.
title('Projected Data for ' + underPerformingSchools(underPerformingSchoolChoice));

% Sets the step size of the x-axis. Without this, the x-axis would have a
% step size of 0.5 instead of a step size of 1.
xlim([2020 2025])
xticks(2020:1:2025)

