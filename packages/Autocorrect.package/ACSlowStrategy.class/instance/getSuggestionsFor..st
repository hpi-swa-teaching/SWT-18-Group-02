as yet unclassified
getSuggestionsFor: aString	
	self suggestions removeAll.
	self list collection do: [ :entry |
		self suggestions add: ((ACSuggestion
			suggestion: entry contents asString
			faults: (self compare: aString to: entry contents asString)
			date: entry date))].
	^ self suggestions