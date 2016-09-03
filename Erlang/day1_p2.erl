% Erlang day 1 problem 2
% Write a function that uses recursion to count to ten

-module(day1_p2).
-export([printTo10/0, printTo10/1]).

printTo10() -> printTo10(0).

printTo10(10) -> io:fwrite([49,48, "\n"]);
printTo10(Number) -> 
	io:fwrite([48 + Number, "\n"]),
	printTo10(Number + 1).

% I don't like how vague this problem is