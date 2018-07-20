An ACDatedEntry is an Entry of the ACTable.
It is compatible to the ODatedEntry from the OCompletion, but it stores Strings instead of Symbols.

Instance Variables
	contents:		String
	date:		DateAndTime 

date
	- The date when the content String was last updated.
	The Entries are sorted by this date, where newer dates are better(smaller).