%	Prolog test
likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X,Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).


foodType(ritz,cracker).
foodType(spam, meat).
foodType(sausage, meat).
foodType(coke, soda).
foodType(pepsi, soda).
foodType(candy, dessert).

flavor(sweet, dessert).
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).
flavor(salty, cracker).

foodFlavor(X,Y) :- foodType(X,Z), flavor(Y,Z).