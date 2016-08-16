//  Io day 2 problem 4
//  Add slot myAverage to list. This should compute average of elements of list
//  Bonus: Raise an exception if an item is not numberic

List myAverage := method(
    sum := 0;
    self foreach(index, value, 
        e := try(sum = sum + value)
        e catch(Exception, Exception raise("This list has invalid elements"))
    )
    return sum;
)

"Create a new list" println
myList := list(1,2,3,4,5)
myList println

"\nFind the average using myAverage" println
myList myAverage println

"\nBlank list with no numbers" println
blankList := list()
blankList println

"\nAverage of blank list" println
blankList myAverage println

"\nA list with strings" println
stringList := list(1,2,"3",4)
stringList println
stringList myAverage println
