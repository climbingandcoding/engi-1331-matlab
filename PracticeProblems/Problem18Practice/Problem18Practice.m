function [L, FinalCheck, Soil] = Problem18Practice(As)
%  Problem 18 Practice Solution. This problem covers 'if' statements, 
% 'length', 'error', and functions. I recommend not wasting your time on 
% task 2 of this problem since it is unlikely to help you unless you 
% are really struggling with 'if' statements.

% Predefined Questions from Prompt
Q1 = 'Does the soil feel or sound noticeably sandy?';
Q2 = 'Does the soil lack all cohesion?';
Q3 = 'Is it difficult to roll the soil into a ball?';
Q4 = 'Does the soil feel smooth and silky, as well as sandy?';
Q5 = 'Does the soil mould to form a strong ball that smears without taking a polish?';
Q6 = 'Does the soil mould to form an easily deformed ball, and feel smooth and silky?';
Q7 = 'Does the soil mould to form a strong ball that smears without taking a polish?';
Q8 = 'Is the soil also sandy?';
Q9 = 'Is the soil also smooth and silky';
Q10 = 'Does the soil mould like a plasticine, polish, and feel very sticky when wet?';
Q11 = 'Is the soil also sandy?';
Q12 = 'Is the soil also smooth and buttery?';

% Task1: Validating 1x12 or 12x1 vector inputted
L = length(As);
if L ~= 12
    error('Inputed answer vector As was not a vector of length 12.');
end

% Task1: Validating 'As' only holds '1's and '0's
Check = As == 1 | As == 0;
FinalCheck = sum(Check);
if FinalCheck ~= 12
    error('Inputted answer vector As was not a vecotr of 1s and 0s.')
end

% Task2: Determining the type of soil
if As(1) == 1
    if As(2) == 1
        Soil = "Sand";
    elseif As(2) == 0
        if As(3) == 1
            Soil = "Loamy Sand";
        elseif As(3) == 0
            if As(4) == 1
                Soil = "Sandy Silt Loam";
            elseif As(4) == 0
                if As(5) == 1
                    Soil = "Sandy Clay Loam";
                elseif As(5) == 0
                    Soil = "Sandy Loam";
                end
            end
        end
    end
elseif As(1) == 0
    if As(6) == 1
        Soil = "Silt Loam";
    elseif As(6) == 0
        if As(7) == 1
            if As(8) == 1
                Soil = "Sandy Clay Loam";
            elseif As(8) == 0
                if As(9) == 1
                    Soil = "Silty Clay Loam";
                elseif As(9) == 0
                    Soil = "Clay Loam";
                end
            end
        elseif As(7) == 0
            if As(10) == 1
                if As(11) == 1
                    Soil = "Sandy Clay";
                elseif As(11) == 0
                    if As(12) == 1
                        Soil = "Silty Clay";
                    elseif As(12) == 0
                        Soil = "Clay";
                    end
                end
            elseif As(10) == 0
                Soil = "Unknown Soil";
            end
        end
    end
end


end