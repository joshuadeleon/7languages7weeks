% Prolog Day 2 problem 1 - SWIPL

reverse([],[]).
reverse([X|Y], Z) :- reverse(Y, W), append(W,[X],Z).

% This took me an embarrassingly long time to figure out. ^_^