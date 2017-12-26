%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%   1. Gautam Rangarajan grangar@purdue.edu
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
%  Program Description: Checks if a string is a word
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ validity ] = isword( w )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fileID = fopen('dictionary.csv');
word = w;

 a = textscan(fileID, '%s', 'Delimiter', '\t');
 a = a{1};
 
 
 b = strcmp(a, word);
  if (length(find(b ~= 0)) == 1)
      validity = 1;
  else
      validity = 0;
  end

end

