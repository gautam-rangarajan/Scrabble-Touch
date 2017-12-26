%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Arul Srinivas sriniv28@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Gautam Rangarajan grangar@purdue.edu
%
%  Section #: 15      Team #: n/a
%
%  Assignment #: Problem set 1
%
%  Academic Integrity Statement:
%
%       I/we have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are submitting
%       is my/our own original work.
%
%  Program Description: This function inputs the bpoard, letters and locations
% and finds if the inputted letters abide by all Scrabble rules. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [errno, info] = isValid(board, locations, letters, turn)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

info = '';

row_locs = locations(:,1);
col_locs = locations(:,2);

size = length(letters);
boardsize = 15;

% -------------------------------------------------------------------------
% Error Check 1: Check if all the letters are in the same row or column

errno = 0;
diffrow = 0;
diffcol = 0;

for a = 2:size
    if (row_locs(a) ~= row_locs(1))
        diffrow = 1;
    end
    
    if (col_locs(a) ~= col_locs(1))
        diffcol = 1;
    end
end

if (diffcol == 1) && (diffrow == 1)
    errno = 1;
elseif (diffrow == 1)
    orientation = 'v';
else
    orientation = 'h';
end

% -------------------------------------------------------------------------
% Error Check 2: Check if at least 1 letter is adjacent to a pre-exisiting
% letter.

if ((errno == 0)&&(turn>1))
    isAdj = 0;
    for a = 1:size

        m = locations(a, 1);
        n = locations(a, 2);

        if (m ~= 1) && (isalpha(board(m - 1, n)))
            isAdj = 1;
            a = size + 1;
        elseif (m ~= boardsize) && (isalpha(board(m + 1, n)))
            isAdj = 1;   
            a = size + 1;
        elseif (n ~= 1) && (isalpha(board(m, n - 1)))
            isAdj = 1;
            a = size + 1;
        elseif (n ~= boardsize) && (isalpha(board(m, n + 1)))
            isAdj = 1;
            a = size + 1;    
        end 
    end

    if (isAdj == 0)
        errno = 2;
    end
end
% -------------------------------------------------------------------------
% Error Check 3: Check if there are gaps in the word. 

if (errno == 0)
    if (size ~= 1)
        
        isgap = 0;
        if (orientation == 'h')
            
            row = locations(1,1);
            first = min(col_locs);
            last = max(col_locs);
            
            for n = first:last
                if (isempty(find(col_locs == n))) && (~isalpha(board(row, n)))
                    isgap = 1;
                end
            end
            
        elseif (orientation == 'v')
            
            col = locations(1,2);
            first = min(row_locs);
            last = max(row_locs);
            
            for m = first:last
                if (isempty(find(row_locs == m))) && (~isalpha(board(m, col)))
                    isgap = 1;
                end
            end
        end
        
        if (isgap == 1)
            errno = 3;
        end
        
    elseif (size == 1)
        
        orientation = 'v';
        m = locations(1, 1);
        n = locations(1, 2);
        
        if ((n ~= 1) && (isalpha(board(m, n - 1)))) || ((n ~= boardsize) && (isalpha(board(m, n + 1))))
            orientation = 'h';
        end
        
        fprintf('%c', orientation);
    end
end

% -------------------------------------------------------------------------
% Error Check 4: Check if the main word exists

if (errno == 0)
    
    mainword = '';
    mainscore = 0;
    mainmult = 1;
    wordmult = 1;
    
    if (orientation == 'h')
        
        index = 1;
        row = locations(1,1);
        first = min(col_locs);
        last = max(col_locs);
        
        while (first ~= 1) && (isalpha(board(row, first - 1)))
            first = first - 1;
        end
        
        while (last ~= boardsize) && (isalpha(board(row, last + 1)))
            last = last + 1;
        end
        
        for n = first:last
            
            if (~isempty(find(col_locs == n)))
                alpha = letters(find(col_locs == n));
                mainword(index) = tolower(alpha);
                mainmult = multiplier(row, n);
                if (mainmult <= 3)
                    mainscore = mainscore + mainmult * points(alpha);
                else
                    wordmult = wordmult * mainmult;
                    mainscore = mainscore + points(alpha);
                end
                index = index + 1;
            elseif (isalpha(board(row, n)))
                alpha = board(row, n);
                mainword(index) = tolower(alpha);
                mainscore = mainscore + points(alpha);
                index = index + 1;
            end
        end
        
        if (wordmult == 12)
            mainscore = mainscore * 2;
        elseif (wordmult == 13)
            mainscore = mainscore * 3;
        end
    
    elseif (orientation == 'v')
        
        index = 1;
        col = locations(1,2);
        first = min(row_locs);
        last = max(row_locs);
        
        while (first ~= 1) && (isalpha(board(first - 1, col)))
            first = first - 1;
        end
        
        while (last ~= boardsize) && (isalpha(board(last + 1, col)))
            last = last + 1;
        end
        
        for m = first:last
            
            if (~isempty(find(row_locs == m)))
                alpha = letters(find(row_locs == m));
                mainword(index) = tolower(alpha);
                mainmult = multiplier(m, col);
                if (mainmult <= 3)
                    mainscore = mainscore + mainmult * points(alpha);
                else
                    wordmult = wordmult * mainmult;
                    mainscore = mainscore + points(alpha);
                end
                index = index + 1;
            elseif (isalpha(board(m, col)))
                alpha = board(m, col);
                mainword(index) = tolower(alpha);
                mainscore = mainscore + points(alpha);
                index = index + 1;
            end
        end
        
        if (wordmult == 12)
            mainscore = mainscore * 2;
        elseif (wordmult == 13)
            mainscore = mainscore * 3;
        end
        
    end        
    
    if (~isword(mainword))
        errno = 4;
        errword = mainword;
        info = errword;
    else
        score = mainscore;
        info = score;
    end
end

% -------------------------------------------------------------------------
% Error Check 5: Check if every sub-word exists         
            
if ((errno == 0)&&(turn > 1))
    allsubscore = 0;
    anyerror = 0;
    
    if (orientation == 'h')
        for q = 1:size
            
            n = locations(q,2);
            first = row;
            last = row;
            subword = '';
            index = 1;
            subscore = 0;
            submult = 1;
            
            while (first ~= 1) && (isalpha(board(first - 1, n)))
                first = first - 1;
            end

            while (last ~= boardsize) && (isalpha(board(last + 1, n)))
                last = last + 1;
            end
            
            for m = first:last
                if (isalpha(board(m, n)))
                    alpha = board(m, n);
                    subword(index) = tolower(alpha);
                    subscore = subscore + points(alpha);
                    index = index + 1;
                elseif (m == row)
                    alpha = letters(q);
                    subword(index) = tolower(alpha);
                    submult = multiplier(m, n);
                    if (first ~= last) && (submult <= 3)
                        subscore = subscore + (submult) * points(alpha);
                    elseif (first ~= last)
                        subscore = subscore + points(alpha);
                    end
                    index = index + 1;
                end
            end
            
            if (~isword(subword))
                errno = 5;
                errword = subword
                anyerror = 1;
            else
                if (submult == 12)
                    allsubscore = allsubscore + subscore * 2;
                elseif  (submult == 13)
                    allsubscore = allsubscore + subscore * 3;
                else
                    allsubscore = allsubscore + subscore;
                end
            end
            
            if (anyerror)
                break;
            end
        end
        
    elseif (orientation == 'v')
        for p = 1:size
            
            m = locations(p,1);
            first = col;
            last = col;
            subword = '';
            index = 1;
            subscore = 0;
            submult = 1;
            
            while (first ~= 1) && (isalpha(board(m, first - 1)))
                first = first - 1;
            end

            while (last ~= boardsize) && (isalpha(board(m, last + 1)))
                last = last + 1;
            end
            
            for n = first:last
                if (isalpha(board(m, n)))
                    alpha = board(m, n);
                    subword(index) = tolower(alpha);
                    subscore = subscore + points(alpha);
                    index = index + 1;
                elseif (n == col)
                    alpha = letters(p);
                    subword(index) = tolower(alpha);
                    submult = multiplier(m, n);
                    if (first ~= last) && (submult <= 3)
                        subscore = subscore + (submult) * points(alpha);
                    elseif (first ~= last)
                        subscore = subscore + points(alpha);
                    end
                    index = index + 1;
                end
            end
            
            if (~isword(subword))
                errno = 5;
                errword = subword;
                anyerror = 1;
            else
                if (submult == 12)
                    allsubscore = allsubscore + subscore * 2;
                elseif  (submult == 13)
                    allsubscore = allsubscore + subscore * 3;
                else
                    allsubscore = allsubscore + subscore;
                end
            end
            
            if (anyerror)
                break;
            end
        end
    end
    
    if (anyerror == 0)
        score = score + allsubscore;
        info = score;
    else
        info = errword;
    end
    
end

end
            
            
            