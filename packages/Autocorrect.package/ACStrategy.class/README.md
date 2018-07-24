An ACStrategy is an Object, that defines a way to calculate a suggestion of corrections for a requested string.
It is an abstract class.
Subclasses should implement calculateSuggestions, that saves a sorted collection of ACSuggestion in suggestions.

Instance Variables
	context:		ACContext 
	list:		aList (ACTable)
	model:		ACModel
	requested:		String
	suggestions:		SortedCollection

context
	- The context in which the requested string was written.
	Can be used for better suggestions.

list
	- The Dictionary of the possible suggestions for example ACTable.

model
	- The model using this strategy.
	Used to get the list, to better mock our tests via mock lists.

requested
	- the requested string.

suggestions
	- a sorted collection of ACSuggestions.
	Return value for getSuggestionsFor: aString
