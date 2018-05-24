as yet unclassified
calculateFastSuggestionsFor: aString
	|oldSuggestions|
	oldSuggestions:= self suggestions copy.
	self suggestions removeAll.
	oldSuggestions do: [ :entry |
		entry value <= self maxMistakes ifTrue:[
		self suggestions add: ((Association key: entry key
		value: (self compare: aString to: entry key)))]].