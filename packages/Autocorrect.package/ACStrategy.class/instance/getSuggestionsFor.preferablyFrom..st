accessing
getSuggestionsFor: aString preferablyFrom: aCollection
	self suggestions: (self getSuggestionsFor: aString).
	self suggestions do: [:each |
		(aCollection includes: each key) ifFalse:[
			each value: each value + self contextImportance]].
	self suggestions reSort.
	^ self suggestions