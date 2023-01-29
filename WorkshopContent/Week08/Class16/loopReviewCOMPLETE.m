%% Loop Review

clc, clear, close all

%% Problem 1:

clc, clear, close all

% Have the user input a number corresponding to the height of a mountain
% from the base in feet. Then, have the user input a number corresponding
% to the temperature at the base of the mountain in fahrenheit. 
% Verify both of these inputs are valid. If an input is not valid, 
% have the user enter it again until it is valid. Finally, return the 
% temperature at the top of the mountain by using this formula:
% tempTop = tempBottom - ((height / 1000) * 3.5)

height = input("Enter the height of the mountain: ");

while height <= 0
    
    height = input("Enter the height of the mountain: ");
    
end

tempBottom = input("Enter the temperature at the base of the mountain: ");

% Could choose a wide range of temperatures here; these seem realistic
while tempBottom < -100 || tempBottom > 130
    
    tempBottom = input("Enter the temperature at the base of the mountain: ");

end

tempTop = tempBottom - ((height / 1000) * 3.5);

disp(tempTop)

%% Problem 2:

clc, clear, close all

% Have the user input a vector. Multiply each odd-indexed term by 5 and
% return the resulting vector.
% Example: [1,2,3,4,5] = [5,2,15,4,25]

vectorInput = input("Enter a vector: ");

for i = 1:2:length(vectorInput)
    
    vectorInput(i) = vectorInput(i) * 5;
    
end

disp(vectorInput)

%% Problem 3:

clc, clear, close all

% Have the user input a vector. Verify that each value in the vector is
% non-negative. If a vector is not valid, prompt the user to replace that 
% value. Then, multiply each odd-indexed term by 2 and each even-indexed 
% term by 3 and return the resulting vector.
% Example: [1,2,3,4,5] = [2,6,6,12,10]

vectorInput = input("Enter a vector: ");

for i = 1:length(vectorInput)
       
    while vectorInput(i)< 0
           
         vectorInput(i) = input("Enter a non-negative number: ");  
           
    end
    
    if mod(i, 2) == 0
       
        vectorInput(i) = vectorInput(i) * 3;
        
    else
        
        vectorInput(i) = vectorInput(i) * 2;
        
    end
    
end

disp(vectorInput)

%% Summary:

% 'while' loops are used when you need to repeat some amount of code an
% unknown/unpredictable amount of times.

% 'for' loops are used when you need to repeat some amount of code a 
% known/predictable amount of times.

% 'while' loops and 'for' loops are always interchangeable, if you are
% clever enough.

% Usually, 'while' loops will be used when you are verifying/validating
% data. However, remember there are certain cases where a 'for' loop could
% be more useful.

% Expect to see both 'while' and 'for' loops on Exam 2 and the Final Exam!
