An ACModel is the model in the MVC structure implemented. It handles the calculation of current suggestions by using strategies attatched to it.

Instance Variables
	entries:				Set
	lookupTables:		Dictionary
	narrowString:		String
	strategies:			OrderedCollection

entries
	- a Set containing all of the recommendations calculated by the strategies

lookupTables
	- used to save special tables (like ACTable) to pass on the the strategies

narrowString
	- current word at cursor (to be corrected)
