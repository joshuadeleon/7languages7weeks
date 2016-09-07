% Erlang Day 2 problem 1
% Write a function that accept a list and keyword then returns the 
% associated value

-module(day2_p1).
-export([getValue/2]).

getValue(Key,List) -> lists:nth(1, [Y || {X,Y} <- List, Key == X]).