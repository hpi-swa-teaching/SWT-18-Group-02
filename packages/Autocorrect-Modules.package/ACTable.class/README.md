An ACTable is a global table, that contains the words that the AutoCorrection checks against.
There are two Singeltons "classes" and "default" containing the classes and the methods we check against.

Instance Variables
	collection:		SortedCollection 
	lookupTable:		Dictionary 

collection
	- This is a sorted collection of all Entries with the recently used ones at the beginning.
	If you use addString: or addEntry: this should be always synchroniced with the lookupTable .
	Use "first: aNumber" to get the aNumber most recently used Strings.

lookupTable
	- This is a Dictionary containing more Dictionaries(all Strings with same 2 starting letters are in the same Subdictionary at the key of these 2 letters) to be able to find all Strings with the same start fast.
	To get the real Entries use "self getEntryFor: aString"
