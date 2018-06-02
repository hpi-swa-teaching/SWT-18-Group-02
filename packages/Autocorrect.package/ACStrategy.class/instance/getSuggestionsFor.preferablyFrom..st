accessing
getSuggestionsFor: aString preferablyFrom: aCollection
	self suggestions: (self getSuggestionsFor: aString).
	self suggestions do: [:each |
		(aCollection includes: each suggestion) ifFalse:[
			each faults: each faults + self contextImportance]].
	self suggestions reSort.
	^ self suggestions