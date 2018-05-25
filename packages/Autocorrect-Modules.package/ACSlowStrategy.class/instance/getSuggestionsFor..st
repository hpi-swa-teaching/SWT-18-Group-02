as yet unclassified
getSuggestionsFor: aString	
	self suggestions removeAll.
	self list collection do: [ :entry |
		self suggestions add: ((Association key: entry value: (self compare: aString to: entry)))].
	^ self suggestions