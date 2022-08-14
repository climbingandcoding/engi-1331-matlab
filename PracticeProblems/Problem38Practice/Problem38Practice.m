%% Problem 38 Practice Solution

% This problem covers curve fitting, 'polyfit', 'end', 'log10', and 
% anonymous functions.

% This is the given dataset for power curve fitting {TP, VP}
TP = [250, 260, 290, 325, 330];
VP = [6.0, 6.1, 6.6, 7.2, 7.3];

% This line uses 'polyfit' to find the coefficients of the best-fitting
% power curve.
CoeffsP = polyfit(log10(TP), log10(VP), 1);

% These lines defines the 'm' and 'b' values.
mP = CoeffsP(1);
bP = 10^CoeffsP(2);

% This line creates the T ranges for the power curve with a step size of
% 0.1.
TPRange = TP(1) : 0.1 : TP(end);

% This line creates the V values for the T ranges.
VPRange = bP .* TPRange.^mP;

% This line creates the function handle for the power curve.
y = @(x) bP .* x.^mP;

