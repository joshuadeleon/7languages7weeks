% Prolog Day 2 problem 1 - SWI-Prolog
% Reverse a list

reverse([],[]).
reverse([Head|Tail], ReverseList) :- 
		reverse(Tail, ReverseTail), 
		append(ReverseTail, [Head], ReverseList).

% This took me an embarrassingly long time to figure out. ^_^