as yet unclassified
fillCollection 
	self alphabetNotFInalDontUse do: [:letter |
		 ((self controller getListOfType: #OTableClasses) entriesMatching: letter) do:[:entry |
			self collection add: entry].
		((self controller getListOfType: #OTableDefault) entriesMatching: letter) do:[:entry |
			self collection add: entry]]