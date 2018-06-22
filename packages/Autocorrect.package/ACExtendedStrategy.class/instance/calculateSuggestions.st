as yet unclassified
calculateSuggestions
	self suggestions valuesDo: [:entry |
		entry string: self requested]