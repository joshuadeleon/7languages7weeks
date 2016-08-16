//  Io day 2 problem 3
//  Write a program to add up all the numbers in a 2-d array

sumElements := method(matrix, 
    sum := 0;
    matrix foreach(columnIndex, vector, 
        vector foreach(rowIndex, element, 
            sum = element + sum
        )
    )
    return sum;
)

A := list(list(1,2), list(3,4,5))
sumElements(A) println