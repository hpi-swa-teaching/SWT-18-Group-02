updating
fillCollectionWithClasses
	|string|
	self alphabetNotFInalDontUse do: [:letter1 |
		self alphabetNotFInalDontUse do: [:letter2 |
			string := letter1 , letter2.
			(OCompletionTable classes entriesMatching: string) do:[:entry |
				self addEntry: (ACDatedEntry contents: entry contents asString date: entry date)]]]