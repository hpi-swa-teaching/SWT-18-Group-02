as yet unclassified
calculateSuggestions	
	self suggestions removeAll.
	self list collection do: [ :entry |
		self suggestions add: ((Association key: entry value: (self compare: requested to: entry)))].