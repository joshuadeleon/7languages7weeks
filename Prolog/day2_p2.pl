% Prolog Day 2 problem 2 - SWI-Prolog
% Find the smallest element in a list

smallest([X], X).
smallest([X|Y], Z) :- smallest(Y,W), Z is min(W,X).

% ... much faster this time...