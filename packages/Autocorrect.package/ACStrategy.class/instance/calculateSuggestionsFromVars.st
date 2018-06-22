as yet unclassified
calculateSuggestionsFromVars

	self context currentlyRelevant do: [ :entry |
			self suggestions add: ((ACSuggestion 
				suggestion: entry 
				faults: (self compare: self requested to: entry)
				date: (DateAndTime now)))].