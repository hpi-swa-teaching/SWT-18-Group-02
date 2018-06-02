as yet unclassified
fillSuggestions
	[self suggestions size < 10] whileTrue:
		[self suggestions add: (ACSuggestion
			suggestion: self suggestions size asString
			faults: self maxMistakes + 5
			date: Time now)]