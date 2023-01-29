%% Imaging Basic

clc, clear, close all

%% Section 1: Loading and Displaying Images

% 1.1: Load in the 'rainbow.jpg' image.



% 1.2: Display the rainbow image.

%figure(201)

%title('Rainbow Image')
%axis image

%% Section 2: Size of an Image

% 2.1: Find the length, width, and depth of the rainbow image.



%% Section 3: Seperating an Image into Color Components

% 3.1: Seperate the rainbow image into its red, blue, and green color
% components.



% 3.2: Use the subplot command to display the original image and the 3 
% color components.

% Original Image
%figure(204)
%subplot(2,2,1)

%title('Rainbow Image')

% Red Component
%subplot(2,2,2)

%title('Red Color Component')
%colorbar

% Green Component
%subplot(2,2,3)

%title('Green Color Component')
%colorbar

% Blue Component
%subplot(2,2,4)

%title('Blue Color Component')
%colorbar

%% Section 4: Manipulating an Image

% 4.1: Ask the user for a value to add to the image.

%user_rgb_value_add = input('Enter a value from 0 to 255 to be added, inclusive: ');

% 4.2: Ask the user for a value to subtract from the image.

%user_rgb_value_subtract = input('Enter a value from 0 to 255 to be subtracted, inclusive: ');

% 4.3: Add the user's input to the rainbow image.



% 4.4: Subtract the user's input from the rainbow image.



% 4.5: Use the subplot command to display the original image, the
% subtracted value image, and the added value image.

% Original Image
%figure(206)
%subplot(3,3,1)

%title('Rainbow Image')

% Added Image
%subplot(3,3,5)

%title('Added Value Image')

% Subtracted Image
%subplot(3,3,9)

%title('Subtracted Value Image')

%% Section 5: Masking

% 5.1: Split the rainbow image into its color components.



% 5.2: Create a formula for detecting purple in the rainbow image.

%purple_mask_1 = red > 30 & red < 100 & green > 15 & green < 90 & blue > 20 & blue < 160;

% 5.3: Create a mask of the purple values.



% 5.4: Remove any purple values from the rainbow image. Make sure you apply
% this mask to a duplicate of the rainbow image.



% 5.5: Display the rainbow image with the purple values removed.

%figure(207)

%axis image
%title('Rainbow Without Purple')
