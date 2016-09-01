// Scala day 2 problem 1
//	Use foldleft to computer the total size of a list of strings

val listOfStrings :List[String] = List (
		"This is a string", 
		"Another string",
		"Even more and more strings"
)

val sizeOfStrings = listOfStrings.foldLeft(0)((total, string) => total + string.length)

println("Given the list of strings: \n")
listOfStrings.foreach(element => println(element))
print("\nThe total size is : ") 
print(sizeOfStrings)