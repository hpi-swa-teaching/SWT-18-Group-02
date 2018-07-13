updating
fillCollectionWithMethods 
	|string|
	self alphabetNotFInalDontUse do: [:letter1 |
		self alphabetNotFInalDontUse do: [:letter2 |
			string := letter1 , letter2.
			(OCompletionTable default entriesMatching: string) do:[:entry |
				self addEntry: (ACDatedEntry contents: entry contents asString date: entry date)]]]