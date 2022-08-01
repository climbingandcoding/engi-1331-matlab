%% Problem 29 Practice Solution

% This problem covers anonymous functions, 'fzero', and 'integral'.

% These lines define y1 and y2 as function handles (anonymous functions).
y1 = @(x) 3.2 * x - 9;
y2 = @(x) 0.6 * x + 2;

% These lines calculate the zeros of y1 and y2.
xZ1 = fzero(y1, 5);
xZ2 = fzero(y2, 5);

% This line defines the intersection function.
inter = @(x) y1(x) - y2(x);

%These lines find the intersection point.
Xint = fzero(inter, 5);
Yint = y1(Xint);

% These lines calculate the area under each of the curves.
A1 = integral(y1, -20, 20);
A2 = integral(y2, -20, 20);

