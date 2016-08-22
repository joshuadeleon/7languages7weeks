// Io Day 2 problem 8
"------------------" println
"-GUESS THE NUMBER-" println
"------------------" println
"RULES: You have 10 tries to guess a correct number from 1 to 100.
You win if you guess correctly before you run out of tries. 
Good luck." println 

tries := 10;

//	Before I found out there is a Random prototype this was my random generator
// random := Date timeStampString asNumber - Date timeStampString asNumber floor;
// number := (((random * 100) floor) % 100) + 1;	// HACK random number

number := (Random value() * 100) floor + 1 // Doubt this is uniform
number println;
lastGuess := nil;
while(tries > 0, 
	"\nGuess a number" println;

	//	Check number
	guess := File standardInput readLine asNumber;
	if(guess == number, break);
	if(guess isNan, guess = nil);
	
	// Set hotter, colder text
	if(lastGuess != nil and guess != nil) then(
		if((lastGuess < guess and guess < number) or (number < guess and guess < lastGuess)) then ("That's hotter - " print)
		if((guess < lastGuess and lastGuess < number) or (number < lastGuess and lastGuess < guess)) then("That's colder - " print)
	)

	// Initialize next turn
	"Sorry, try again." println;
	lastGuess = guess;
	tries = tries - 1;
)

//	Print final message
if (tries == 0, 
	"Sorry, better luck next time." println,
	("Great job! you guessed it.. the number was " .. number) println
)
