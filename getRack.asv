function [newrack] = getRack(rack)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

isvowel = 0;
vowels = ['a' 'e' 'i' 'o' 'u'];
newrack = rack;

numNew = sum(newrack == 0);

for m = 1:7
    if (any(rack(m) == vowels))
       isvowel = 1;
    end
end

replace = randi(numNew);
count = 1;

for m = 1:7
    if (newrack(m) == 0)
        newrack (m) = 96 + randi(26);
        
        if (isvowel == 0) && (count == replace)
            newrack (m) = vowels(randi(5))
            count = count + 1;
        end
    end
end

    
    