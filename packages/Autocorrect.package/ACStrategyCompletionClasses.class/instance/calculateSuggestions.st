as yet unclassified
calculateSuggestions
	|match|
	
	self suggestions removeAll.
	(self list entriesMatching: self requested) do: [ :entry |
		match:= entry contents asString.
		self suggestions add: (ACSuggestion 
			suggestion: match 
			faults: match size - self requested size
			date: entry date)].