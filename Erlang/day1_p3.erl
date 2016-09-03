% Erlang day 1 problem 3
% Write a function that uses matching to selectively print "success"
% or "error:message" given input of the form {error, Message} or success

-module(day1_p3).
-export([printMessage/1]).

printMessage(success) -> success;
printMessage({error,Message}) -> {error, Message}.

% This problem was so straight forward, it makes me wonder if the 
% others were much easier than I made them to be.