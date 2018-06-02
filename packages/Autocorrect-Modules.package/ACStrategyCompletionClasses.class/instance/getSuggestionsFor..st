as yet unclassified
getSuggestionsFor: aString
	|match|
	
	self suggestions removeAll.
	(self list entriesMatching: aString) do: [ :entry |
		match:= entry contents asString.
		self suggestions add: (ACSuggestion
		suggestion: match
		faults: match size - aString size
		date: entry date)].
	^ self suggestions