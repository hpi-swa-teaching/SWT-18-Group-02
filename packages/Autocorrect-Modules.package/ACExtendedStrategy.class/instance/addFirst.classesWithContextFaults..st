as yet unclassified
addFirst: aNumber classesWithContextFaults: faults
	(self list classes first: aNumber) do: [:entry |
		self suggestions at: entry contents ifAbsentPut: [ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: faults
				date: entry date
				maxMistakes: self maxMistakes ]] 