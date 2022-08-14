%% Problem 37 Practice Solution

% This problem covers curve fitting, 'polyfit', 'end', and anonymous
% functions.

% This is the given dataset for linear curve fitting {TL, VL}
TL = [375, 395, 420, 450, 500];
VL = [2.2, 2.3, 2.5, 2.6, 2.9];

% This line uses 'polyfit' to find the coefficients of the best-fitting
% linear curve.
CoeffsL = polyfit(TL, VL, 1);

% These lines defines the 'm' and 'b' values.
mL = CoeffsL(1);
bL = CoeffsL(2);

% This line creates the T ranges for the linear curve with a step size of
%0.1.
TLRange = TL(1) : 0.1 : TL(end);

% This line creates the V values for the T ranges.
VLRange = mL * TLRange + bL;

% This line creates the function handle for the linear curve.
y = @(x) mL * x + bL;

