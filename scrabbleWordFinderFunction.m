function [ validity ] = scrabbleWordFinderFunction( w )
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

