% Prolog Day 2 problem 3 - SWI-Prolog
% Sort a list

% Define smallest (min)
smallest([SingleElement], SingleElement).
smallest([Head|Tail], SmallestInList) :- smallest(Tail,SmallestInTail), SmallestInList is min(SmallestInTail,Head).

% Sorts a list
sortList([],[]).
sortList([X], [X]).
sortList([X|Y], Z) :-
		smallest(Y,SmallestInY),
		smallest([X,SmallestInY], Smallest),
		delete([X|Y], Smallest, UnSorted),
		sortList(UnSorted, Remainder),
		append([Smallest], Remainder, Z).

% I'm positive there is a faster way. 