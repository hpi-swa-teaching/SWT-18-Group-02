as yet unclassified
calculateFastSuggestionsFor: aString
	|oldSuggestions|
	oldSuggestions:= self suggestions copy.
	self suggestions removeAll.
	oldSuggestions do: [ :entry |
		entry faults <= self maxMistakes ifTrue:[
		self suggestions add: ((ACSuggestion
			suggestion:  entry suggestion
			faults: (self compare: aString to: entry suggestion)
			date: entry date))]].