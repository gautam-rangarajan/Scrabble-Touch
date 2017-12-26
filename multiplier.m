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
%  Program Description: Multiplier at board index
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [multip] = multiplier(m, n)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

pointsboard = [13  1  1  2  1  1  1 13  1  1  1  2  1  1 13;
                1 12  1  1  1  3  1  1  1  3  1  1  1 12  1;
                1  1 12  1  1  1  2  1  2  1  1  1 12  1  1;
                2  1  1 12  1  1  1  2  1  1  1 12  1  1  2;
                1  1  1  1 12  1  1  1  1  1 12  1  1  1  1;
                1  3  1  1  3  1  1  3  1  1  3  1  1  3  1;
                1  1  2  1  1  1  2  1  2  1  1  1  2  1  1;
               13  1  1  2  1  1  1  1  1  1  1  2  1  1 13;
                1  1  2  1  1  1  2  1  2  1  1  1  2  1  1;
                1  3  1  1  3  1  1  3  1  1  3  1  1  3  1;
                1  1  1  1 12  1  1  1  1  1 12  1  1  1  1;
                2  1  1 12  1  1  1  2  1  1  1 12  1  1  2;
                1  1 12  1  1  1  2  1  2  1  1  1 12  1  1;
                1 12  1  1  1  3  1  1  1  3  1  1  1 12  1;
               13  1  1  2  1  1  1 13  1  1  1  2  1  1 13];

multip = pointsboard(m, n);

end

