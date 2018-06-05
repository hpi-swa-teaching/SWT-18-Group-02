as yet unclassified
fillCollection 
	self alphabetNotFInalDontUse do: [:letter |
		 ((self controller getListOfType: #OTableClasses) entriesMatching: letter asString) do:[:entry |
			self collection add: entry contents asString].
		((self controller getListOfType: #OTableDefault) entriesMatching: letter asString) do:[:entry |
			self collection add: entry contents asString]]
	"Symbol allSymbols do: [:symbol | self collection add: symbol asString]"