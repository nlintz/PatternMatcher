==========================
Nathan Lintz
AI Pattern Matcher

--main.rkt
--Modules
	--Helpers
	--InputParse
	--OutputGen
	--StaticRules


main -> calls the prompt function and ties all of the modules together. If the user wants to keep inputting
	information, the main method is called more times

*** HELPERS ***
duplicates -> checks if an assocative list has a different value for the same key
key-in-hash -> methods used to see if a key exists in a hash table
pattern-match -> checks if a "*" or "=" is in the input
search-for-pattern -> matches inputs with a list of patterns. one method returns the associative list,
	the other returns the matching pattern
string_to_list -> the input I use is a string, this converts that string into a list

*** InputParse ***
parse -> parses an input and extracts the variables as well as their values
prompt -> asks the user to write something in the command line

*** OutputGen ***
output-gen -> formats a given response with the varaibles provided by other functions

*** StaticRules ***
input-pattern -> contains a data structure mapping patterns to outputs. Also keeps track of a list of 
	patterns

==========================


==========================
General Overview
First the main method is called prompting the user for an input. That input is matched to a pattern
and the variables from the input are extracted. That pattern is matched against an output which
is formatted with the variables that the user provides.
==========================


==========================
Test Cases
(main)
'(hello) -> '(hi)
'(how are you) -> '(thank you i am well)
'(my name is nathan) -> it is nice to meet you nathan
'(i like nathan and mikey) -> do you prefer nathan or mikey?
'(do computers feel?) -> do computers worry you?
'(no, sorry eliza) -> no need to be sorry
...
...
these are just some example patterns, there are many more in the StaticRules directory
...
...
'(quit) -> "Good Bye"
==========================