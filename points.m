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
%  Program Description: Returns the number of points corresponding to a
%  letter.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [point] = points(alpha)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

point = 0;
% switch alpha
%     case {'a', 'A', 'e', 'E', 'i', 'I', 'l', 'L', 'n', 'N', 'o', 'O', 'r', 'R', 's', 'S', 't', 'T', 'u', 'U'}
%         point = 1;
%     case {'g', 'G', 'd', 'D'}
%         point = 2;
%     case {'b', 'B', 'c', 'C', 'm', 'M', 'p', 'P'}
%         point = 3;
%     case {'f', 'F', 'h', 'H', 'v', 'V', 'w', 'W', 'y', 'Y'}
%         point = 4;
%     case {'k', 'K'}
%         point = 5;
%     case {'j', 'J', 'x', 'X'}
%         point = 8;
%     case {'q', 'Q', 'z', 'Z'}
%         point = 10;
% end

switch alpha
    case {'a', 'e', 'i', 'l', 'n', 'o', 'r', 's', 't', 'u'}
        point = 1;
    case {'g', 'd'}
        point = 2;
    case {'b', 'c', 'm', 'p'}
        point = 3;
    case {'f', 'h', 'v', 'w', 'y'}
        point = 4;
    case {'k'}
        point = 5;
    case {'j', 'x'}
        point = 8;
    case {'q', 'z'}
        point = 10;
    otherwise 
        point = 0;
end


end

