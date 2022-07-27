function [C] = Problem17Practice(WL)
% Problem 17 Practice Solution. This problem covers 'if' statements, 
% 'error', 'fprintf', and functions. This code contains the correct code 
% with all errors fixed.

% The first error is it should be '< 400' and using the '||' (or) operator.
if WL < 400 || WL > 700
    error('Your wavelength is outside the visible spectrum.')

% The 'end' statement was missing, so this is the third error.
end

% The fourth error is we need to use '&&' and 'WL' twice.
if WL >= 400 && WL < 450
    C = "Violet";
    
% No errors on this line.
elseif WL >= 450 && WL < 490
    C = "Blue";
    
% The order is reversed, but it is not an error.
elseif WL < 520 && WL >= 490
    C = "Cyan";

% No errors on this line.
elseif WL >= 520 && WL < 560
    C = "Green";

% The error here is we need to use 'elseif'.
elseif WL >= 560 && WL < 590
    C = "Yellow";

% The error here is need to include the conditions for the wavelength to be
% orange.
elseif WL >= 590 && WL < 635
    C = "Orange";

% No errors on this line.
else
    C = "Red";
        
end
    
% The error here is we need to swap the positions of the %0.0f and the %s.
fprintf('The color is %s, for a wavelength of %0.0f [nm].', C, WL);


end