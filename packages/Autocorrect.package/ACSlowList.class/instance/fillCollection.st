accessing
fillCollection 
	|string|
	self alphabetNotFInalDontUse do: [:letter1 |
		"self alphabetNotFInalDontUse do: [:letter2 |"
			string := letter1 ", letter2".
		 	((self controller getListOfType: #OTableClasses) entriesMatching: string) do:[:entry |
				self collection add: entry].
			((self controller getListOfType: #OTableDefault) entriesMatching: string) do:[:entry |
				self collection add: entry]]"]"