% Erlang Day 2 problem 2
% Given a list with form {item, quantity, price}
% Write a list comprehension that looks like {item, total_price}

-module(day2_p2).
-export([getTotal/1]).

getTotal(List) -> 
		[{Item, Quantity * Price} || {Item, Quantity, Price} <- List].