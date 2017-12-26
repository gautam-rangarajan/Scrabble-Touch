%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Disha Anandpara danandpa@purdue.edu
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
%  Program Description: Converts a letter to lower case
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [lowered] = tolower(alpha)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

lowered = alpha;

if (lowered >= 65) && (lowered <= 90)
    lowered = lowered + 32;
end

end

