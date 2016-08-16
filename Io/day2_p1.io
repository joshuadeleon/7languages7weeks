//  Day 2 Problem 1 of Io Language
//  Write a program to find the nth Fibonacci Number e.g. fibonacci(4) => 3

//  Iterative
fibonacci := method(index, 
    result := 1;
    previous := 0;
    tmp := 0;
    if(index <= 0) then(return "undefined") else( 
        while(index > 1,
            tmp = result;
            result = result + previous;
            previous = tmp;
            index = index - 1;
        );
        return result;
    )
)

"Iterative Fibonacci sequence from -1 to 8" println
for(n, -1, 8, ("Index: " .. n .. "\tValue: " .. fibonacci(n)) println);

//  Recursive
recursiveFibonacci := method(index,
    if(index <= 0) then(
        return "undefined"
    ) elseif(index == 1 or index == 2) then (
        return 1
    ) else(
        return recursiveFibonacci(index - 1) + recursiveFibonacci(index - 2)
    )
)

"\nIterative Fibonacci sequence from -1 to 8" println
for(n, -1, 8, ("Index: " .. n .. "\tValue: " .. recursiveFibonacci(n)) println);


