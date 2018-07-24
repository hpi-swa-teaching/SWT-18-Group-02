updating
fillCollectionWithMethods 
	|string|
	
	Character alphabet do: [:letter1 |
		Character alphabet do: [:letter2 |
			string := letter1 asString, letter2 asString.
			(OCompletionTable default entriesMatching: string) do:[:entry |
				self addEntry: (ACDatedEntry contents: entry contents asString date: entry date)]]]