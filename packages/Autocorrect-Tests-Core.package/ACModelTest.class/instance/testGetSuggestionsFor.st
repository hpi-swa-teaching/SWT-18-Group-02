testcases
testGetSuggestionsFor

	| suggestions currentConfidenceRating |
	self assert: (model respondsTo: #getSuggestionsFor:).
	
	suggestions := model getSuggestionsFor: 'Mor'.
	self assert: suggestions class equals: SortedCollection.
	
	"suggestions should be sorted by ascending confidence rating"
	currentConfidenceRating := 0.
	suggestions do: [:suggestion |
		self assert: suggestion value >= currentConfidenceRating.
		currentConfidenceRating := suggestion value]