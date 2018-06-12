as yet unclassified
calculateSuggestionsFromVars

	context currentlyRelevant do: [ :entry |
			self suggestions add: ((ACSuggestion 
				suggestion: entry 
				faults: (self compare: requested to: entry)
				date: (DateAndTime now)))].