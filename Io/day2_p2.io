// Day 2 Io problem 2
division := Number getSlot("/")
Number / := method(d, if(d == 0, return 0, return self division(d)))

//  Print a few fractions
("3/4 = " .. (3/4)) println
("5/5 = " .. (5/5)) println
("2/0 = " .. (2/0)) println
("-18/6 = " .. (-18/6)) println
