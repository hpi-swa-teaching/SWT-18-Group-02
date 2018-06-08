as yet unclassified
calculateSuggestions
	|match|
	
	self suggestions removeAll.
	(self list entriesMatching: requested) do: [ :entry |
		match:= entry contents asString.
		self suggestions add: (ACSuggestion 
			suggestion: match 
			faults: match size - requested size
			date: entry date)].