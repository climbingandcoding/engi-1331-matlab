%% Problem 36 Practice Solution

% This problem covers curve fitting, 'polyfit', 'end', 'exp', 'log',
% and anonymous functions.

% This is the given dataset for exponential curve fitting {TE, VE}.
TE = [240, 260, 280, 300, 320];
VE = [2.2, 2.7, 3.3, 4.0, 4.9];

% This line uses 'polyfit' to find the coefficients of the best-fitting
% exponential curve.
CoeffsE = polyfit(TE, log(VE), 1);

% These lines defines the 'm' and 'b' values.
mE = CoeffsE(1);
bE = exp(CoeffsE(2));

% This line creates the T ranges for the exponential curve with a step size of
% 0.1.
TERange = TE(1) : 0.1 : TE(end);

% This line creates the V values for the T ranges.
VERange = bE .* exp(mE .* TERange);

% This line creates the function handle for the exponential curve.
y = @(x) bE .* exp(mE .* x);

