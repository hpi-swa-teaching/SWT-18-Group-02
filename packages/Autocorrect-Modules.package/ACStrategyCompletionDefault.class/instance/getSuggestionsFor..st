as yet unclassified
getSuggestionsFor: aString
	|match|
	
	(self list entriesMatching: aString) do: [ :entry |
		match:= entry contents asString.
		self suggestions add: (Association key: match value: match size - aString size)].
	^ self suggestions