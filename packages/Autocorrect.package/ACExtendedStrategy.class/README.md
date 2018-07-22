An ACExtendedStrategy is an ACStrategy, that uses ACExtendedSuggestion to calculate the faults. It uses a Dictionary instead of a SortedCollection to organize the suggestions.
It takes the possible suggestions from the ACTable and from the ACContext, using the recently updated entries of the ACTable, the entries fitting the first two letters of the requested string and some suggestions from the context.

Instance Variables
	suggestions: Dictionary