An ACSuggestion is a container for possible suggestions for a requested string.
They can be sorted, where they are better(smaller), when they have less faults or
the same faults with a newer date.

Instance Variables
	date:		DateAndTime
	faults:		Number
	suggestion:		String

date
	-The time when the suggested string was last updated in the used dictionary.

faults
	- The distance of the suggested string to the requested string.

suggestion
	- The suggested string.
