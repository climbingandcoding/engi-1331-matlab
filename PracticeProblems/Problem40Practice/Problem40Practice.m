function [Phase, Alpha, Beta, Zeta, Xint] = Problem40Practice(UT, UP)
% Problem 40 Practice Solution. This problem covers anonymous functions,
% 'if' statements, 'fzero', and functions.d

% This section builds the curve and intersection equations.
y1 = @(x) 3.2 * x - 9;
y2 = @(x) 0.6 * x + 2;
inter = @(x) y1(x) - y2(x);

% This line finds the intersection point.
Xint = fzero(inter, 5);

% If the user entered temperature is less than the temperature of the 
% intersection point.
if UT < Xint
    
    % If the user entered pressure is greater than the pressure of the 'y2' 
    % curve at the user entered temperature.
    if UP > y2(UT)
        
        Region = 1;
     
    % If the user entered pressure is less than the pressure of the 'y2' 
    % curve and greater than the pressure of the 'y1' curve at the user 
    % entered temperature.
    elseif UP < y2(UT) && UP > y1(UT)
        
        Region = 2;
    
    % If the user entered pressure is less than the pressure of the 'y1' 
    % curve at the user entered temperature.
    elseif UP < y1(UT)
        
        Region = 3;
        
    end

% If the user entered temperature is less than the temperature of the 
% intersection point.
elseif UT > Xint
    
    % If the user entered pressure is greater than the pressure of the 'y2' 
    % curve at the user entered temperature. 
    if UP > y1(UT)
        
        Region = 4;
     
    % If the user entered pressure is greater than the pressure of the 'y2' 
    % curve and less than the pressure of the 'y1' curve at the user 
    % entered temperature.
    elseif UP < y1(UT) && UP > y2(UT)
        
        Region = 5;
     
    % If the user entered pressure is less than the pressure of the 'y2' 
    % curve at the user entered temperature.
    elseif UP < y2(UT)
        
        Region = 6;
        
    end
    
end

% A solid is found.
if Region == 1 || Region == 4
    
    Phase = "Solid";

% A gas is found.
elseif Region == 2 || Region == 5
    
    Phase = "Gas";

% A liquid is found.
elseif Region == 3 || Region == 6
    
    Phase = "Liquid";
    
end

% Code necessary to test user solution in Zybooks.
Rando = -20 : 0.1 : 20;
Alpha = y1(Rando);
Beta = y2(Rando);
Zeta = inter(Rando);


end
