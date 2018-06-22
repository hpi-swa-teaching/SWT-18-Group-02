as yet unclassified
calculateSuggestions	
	self suggestions removeAll.
	self list collection do: [ :entry |
		self suggestions add: ((ACSuggestion 
			suggestion: entry contents asString
			faults: (self compare: self requested to: entry contents asString)
			date: entry date))].