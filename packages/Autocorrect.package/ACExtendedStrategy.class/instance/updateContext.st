as yet unclassified
updateContext
	self context calculateAllPossibleSuggestions do:[:symbol |
		self suggestions at: symbol asString ifPresent: [:entry |
			entry contextFaults: 0]]