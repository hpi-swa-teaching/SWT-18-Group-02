suggestionCalculation
calculateSuggestions
	self suggestions valuesDo: [:entry |
		entry string: self requested]