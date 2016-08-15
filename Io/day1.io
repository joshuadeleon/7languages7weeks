//  Day 1 of Io Language

// Is 0 true or false? Is empty string true or false? Is nil true or false?
if(0, "0 is true" println, "0 is false" println)

if("", "Empty string is true" println, "Empty string is false" println)

if(nil, "Nil is true" println, "Nil is false" println)

//  Define Thing object
Thing := Object clone
Thing name := "thing"
Thing declare := method(("My name is " .. name) println)


// This tells what slots are supported in object Thing
"\r\n" print
Thing slotSummary println

// Run method declare
Thing declare

//  ::= creates a setter method and assigns value to slot
//  := creates a slot
//  = assigns to an existing slot