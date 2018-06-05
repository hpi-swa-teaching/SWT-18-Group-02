as yet unclassified
calculateSuggestions
	|match|
	
	self suggestions removeAll.
	(self list entriesMatching: requested) do: [ :entry |
		match:= entry contents asString.
		self suggestions add: (Association key: match value: match size - requested size)].