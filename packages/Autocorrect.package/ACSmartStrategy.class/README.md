An ACSmartStrategy is an ACStrategy, that uses the ACRatherSlowStrategy, but it stores the last requests and uses old results when possible.
To bad suggestions get discarded, so for long words the number of tested suggestions gets significantly less for a much faster calculation than ACRatherSlowStrategy can provide.

Instance Variables
	lastString:		Strin
	strategy:		ACRatherSlowStrategy 

lastString
	- the last requested string to check if last results can be used.

strategy
	- The ACRatherSlowStrategy to calculate new suggestions if last results can't be used.
