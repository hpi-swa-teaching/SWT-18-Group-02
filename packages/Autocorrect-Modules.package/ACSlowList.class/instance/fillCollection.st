as yet unclassified
fillCollection 
	self alphabetNotFInalDontUse do: [:letter |
		 (OCompletionTable classes entriesMatching: letter) do:[:entry |
			self collection add: entry contents asString].
		(OCompletionTable default entriesMatching: letter) do:[:entry |
			self collection add: entry contents asString]]