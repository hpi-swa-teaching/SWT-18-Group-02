accessing
fillCollection 
	|string|
	
	Character alphabet do: [:letter |
		string := letter asString.
		 ((self controller getListOfType: #OTableClasses) entriesMatching: string) do:[:entry |
			self collection add: entry].
		((self controller getListOfType: #OTableDefault) entriesMatching: string) do:[:entry |
			self collection add: entry]]"]"