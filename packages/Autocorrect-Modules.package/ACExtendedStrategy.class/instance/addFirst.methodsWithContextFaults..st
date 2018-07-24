tableAccess
addFirst: aNumber methodsWithContextFaults: faults
	(self list default first: aNumber) do: [:entry |
		self suggestions at: entry contents ifAbsentPut: [ACExtendedSuggestion
				suggestion: entry contents
				contextFaults: faults
				date: entry date
				maxMistakes: self maxMistakes]] 