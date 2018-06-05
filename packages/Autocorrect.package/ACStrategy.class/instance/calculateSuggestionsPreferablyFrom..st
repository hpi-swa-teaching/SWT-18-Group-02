suggestionCalculation
calculateSuggestionsPreferablyFrom: aCollection

	self suggestions do: [:each |
		(aCollection includes: each key) ifFalse:[
			each value: each value + self contextImportance]].
	self suggestions reSort.