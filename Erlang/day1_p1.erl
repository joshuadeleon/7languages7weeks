% Erlang Day 1 problem 1
% Write a function that uses recursion to return the number of words in a string

-module(day1_p1).
-export([countWords/1]).

countWords("") -> 0;
countWords([32|[]]) -> 0;
countWords([A|[]]) -> 1;
countWords([B, 32 | C]) -> 
	if B == 32 	-> countWords(C); 
		true 		-> 1 + countWords(C)
	end;
countWords([D|E]) -> countWords(E).

% much much simpler to use built-in function string:words
% very unsure how much of the language to use for this problem
% tried to use as little as possible. I think there is a way to use 
% only pattern matching
