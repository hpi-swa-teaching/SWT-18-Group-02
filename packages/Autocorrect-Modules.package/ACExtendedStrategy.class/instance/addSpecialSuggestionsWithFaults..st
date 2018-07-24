tableAccess
addSpecialSuggestionsWithFaults: aNumber
	({'self' . 'super'} union: self context currentlyRelevant) do: [:entry |
		self suggestions at: entry contents ifAbsentPut: [ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: aNumber
				date: DateAndTime now
				maxMistakes: self maxMistakes]] 