%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Pakanun Ou-Udomying pouudomy@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
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
%  Program Description: Checks if a letter is a character is a lower case
%  alphabet.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [bool] = isalpha(letter)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
bool = 0;

if (letter >=97) && (letter <= 122)
    bool = 1;
elseif (letter >=65) && (letter <= 90)
    bool = 1;
end

end

