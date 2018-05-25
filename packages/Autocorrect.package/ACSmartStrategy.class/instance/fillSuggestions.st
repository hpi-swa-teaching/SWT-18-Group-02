as yet unclassified
fillSuggestions
	[self suggestions size < 10] whileTrue:
		[self suggestions add: (Association key: self suggestions size asString  value: self maxMistakes + 2)]