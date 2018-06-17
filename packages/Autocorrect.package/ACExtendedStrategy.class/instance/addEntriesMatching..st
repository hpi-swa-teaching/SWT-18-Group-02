as yet unclassified
addEntriesMatching: aString
	((self list default entriesStartingWith: aString) union: (self list classes entriesStartingWith: aString))
		do: [:entry |
			self suggestions at: entry contents ifAbsentPut: [ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: self contextImportance
				date: entry date
				maxMistakes: self maxMistakes ]]
	
	