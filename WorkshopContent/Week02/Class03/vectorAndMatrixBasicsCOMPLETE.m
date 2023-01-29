%% Description:

%{
    
    Week 2 - Class 3 - 08/29/22

    This is a short interactive presentation that presents the basics of
    scalars, vectors, and matrices in MATLAB. In this file, we will cover
    scalars, row vectors, column vectors, matrices, transposing, 'length',
    'size', indexing, arithmetic, and modifying vectors/matrices.

%}

%% Housekeeping Commands

% Clears the command window.
clc

% Clears the workspace of all variables.
clear

% Closes all figures (plots)
close all

%% Section 1: Creating Scalars, Vectors, and Matrices

clc, clear, close all

% Create a [1x1] scalar.
a1 = 1

% Create a [1x5] row vector.
b1 = [1,2,3,4,5]

% Create a [1x5] row vector in a different way.
c1 = 1:1:5

% Create a [1x5] row vector in a different way.
d1 = linspace(1,5,5)

% Create a [1x5] column vector.
e1 = [1;2;3;4;5]

% Create a [3x3] matrix.
f1 = [1,2,3;4,5,6;7,8,9]

% Create a matrix by combining two of the above vectors.
g1 = [b1;c1]

%% Section 2: Transposing, Length, and Size

clc, clear, close all

% Create a [1x5] row vector.
a2 = [1,2,3,4,5]

% Create a [2x2] matrix.
b2 = [1,2;3,4]

% Transpose the [1x5] row vector into a [1x5] column vector.
c2 = a2'

% Transpose a [2x2] matrix.
d2 = b2'

% Find the length of the vector.
e2 = length(a2)

% Find the size of the matrix.
[f2,g2] = size(b2)

%% Section 3: Indexing

clc, clear, close all

% Create a [5x5] matrix.
a3 = magic(5)

% Index the value in the middle of the matrix.
b3 = a3(3,3)

% Index the value in the middle of the matrix in a different way.
c3 = a3(13)

% Index the top three rows of the matrix.
d3 = a3(1:3, :)

% Index the last column of the matrix.
e3 = a3(:, end)

% Index the four values in the bottom-right corner of the matrix.
f3 = [a3(end-1, end-1), a3(end-1, end), a3(end, end-1), a3(end, end)]

%% Section 4: Vector and Matrix Arithmetic

clc, clear, close all

% Create two [3x3] matrices.
a4 = magic(3)
b4 = magic(3)

% Add the two matrices.
c4 = a4 + b4

% Multiply the two matrices (matrix operation; rarely used in this class).
d4 = a4 * b4

% Multiply the two matrices (array operation; the standard for this class).
e4 = a4 .* b4

% Scale one of the matrices by a factor of 5.
f4 = a4 * 5

%% Section 5: Modifying Vectors and Matrices

clc, clear, close all

% Create a [5x5] matrix.
a5 = magic(5)

% Replace the middle element in the matrix.
a5(3,3) = 75

% Replace the first row of the matrix.
a5(1, :) = [10,20,30,40,50]

% Delete the last column of the matrix.
a5(:,end) = []

% Delete the bottom-right corner value of the matrix.
% a1(end,end) = []

% Create a [1x4] row vector.
b5 = 1:1:4

% Add a number to the beginning of the vector.
b5 = [6, b5]

% Add a number to the end of the vector.
b5 = [b5, 5]

% Add a value to the middle of the vector.
b5 = [b5(1:length(b5)/2), 8, b5(length(b5)/2+1:end)]

% Add a single value to the matrix.
%a5(end+1,1) = 500 (not possible to add just one value)

% Add a row to the bottom of the matrix.
a5 = [a5;[1,2,3,4]]

% Add a column to the left side of the matrix.
a5 = [[1;2;3;4;5;6],a5]

% Add a column to the right side of the matrix.
a5 = [a5,[1;2;3;4;5;6]]

% Add a column to the middle of the matrix.
a5 = [a5(:,1:length(a5)/2),[1;2;3;4;5;6],a5(:,length(a5)/2+1:end)]
