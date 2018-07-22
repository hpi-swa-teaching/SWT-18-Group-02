An ACExtendedSuggestion is an ACSuggestion with some more functionality.
It can save the requested string to calculate the faults on its own.
It uses the DP algorithm of the Levenshtein distance and by memorising the table this should be faster then calculating the faults elsewhere.

Instance Variables
	contextFaults:		Number
	maxMistakes:		Number
	string:		String
	table:		Matrix 

contextFaults
	- The suggestion gets worse, when it doesn't fit the context.
	This number just gets added to the calculated faults.

maxMistakes
	- Stop calculating the faults, when maxMistakes are reached, so that the calculation doesn't get to long for very long requested strings.
	
string
	- The requested string.

table
	- The DP table for calculating the Levenshtein distance.
