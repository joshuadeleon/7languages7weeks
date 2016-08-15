//  Day 1 of Io Language

// Is 0 true or false? Is empty string true or false? Is nil true or false?
if(0, "\n0 is true" print, "\n0 is false")

if("", "\nEmpty string is true" print, "\nEmpty string is false" print)

if(nil, "\nNil is true" print, "\nNil is false" print)

//  Define Thing object
Thing := Object clone
Thing name := "thing"
Thing declare := method(("\nMy name is " .. name) print)


// This tells what slots are supported in object Thing
"\r\n" print
Thing slotSummary print
"\r\n" print

// Run method declare
Thing declare

//  ::= creates a setter method and assigns value to slot
//  := creates a slot
//  = assigns to an existing slot