%% Imaging Basic

clc, clear, close all

%% Section 1: Loading and Displaying Images

% 1.1: Load in the 'rainbow.jpg' image.

rainbow_image = imread('rainbow.jpg');

% 1.2: Display the rainbow image.

figure(201)
image(rainbow_image)
title('Rainbow Image')
axis image

%% Section 2: Size of an Image

% 2.1: Find the length, width, and depth of the rainbow image.

[rainbow_height, rainbow_width, rainbow_depth] = size(rainbow_image);

%% Section 3: Seperating an Image into Color Components

% 3.1: Seperate the rainbow image into its red, blue, and green color
% components.

red = rainbow_image(:,:,1);
green = rainbow_image(:,:,2);
blue = rainbow_image(:,:,3);

% 3.2: Use the subplot command to display the original image and the 3 
% color components.

% Original Image
figure(204)
subplot(2,2,1)
image(rainbow_image)
title('Rainbow Image')

% Red Component
subplot(2,2,2)
image(red)
title('Red Color Component')
colorbar

% Green Component
subplot(2,2,3)
image(green)
title('Green Color Component')
colorbar

% Blue Component
subplot(2,2,4)
image(blue)
title('Blue Color Component')
colorbar

%% Section 4: Manipulating an Image

% 4.1: Ask the user for a value to add to the image.

user_rgb_value_add = input('Enter a value from 0 to 255 to be added, inclusive: ');

% 4.2: Ask the user for a value to subtract from the image.

user_rgb_value_subtract = input('Enter a value from 0 to 255 to be subtracted, inclusive: ');

% 4.3: Add the user's input to the rainbow image.

rainbow_image_plus_user_value = rainbow_image + user_rgb_value_add;

% 4.4: Subtract the user's input from the rainbow image.

rainbow_image_minus_user_value = rainbow_image - user_rgb_value_subtract;

% 4.5: Use the subplot command to display the original image, the
% subtracted value image, and the added value image.

% Original Image
figure(206)
subplot(3,3,1)
image(rainbow_image)
title('Rainbow Image')

% Added Image
subplot(3,3,5)
image(rainbow_image_plus_user_value)
title('Added Value Image')

% Subtracted Image
subplot(3,3,9)
image(rainbow_image_minus_user_value)
title('Subtracted Value Image')

%% Section 5: Masking

% 5.1: Split the rainbow image into its color components.

red = rainbow_image(:,:,1);
green = rainbow_image(:,:,2);
blue = rainbow_image(:,:,3);

% 5.2: Create a formula for detecting purple in the rainbow image.

purple_mask_1 = red > 30 & red < 100 & green > 15 & green < 90 & blue > 20 & blue < 160;

% 5.3: Create a mask of the purple values.

final_purple_mask = cat(3,purple_mask_1,purple_mask_1,purple_mask_1);

% 5.4: Remove any purple values from the rainbow image. Make sure you apply
% this mask to a duplicate of the rainbow image.

rainbow_duplicate = rainbow_image;
rainbow_duplicate(final_purple_mask) = [255];

% 5.5: Display the rainbow image with the purple values removed.

figure(207)
image(rainbow_duplicate)
axis image
title('Rainbow Without Purple')
