as yet unclassified
testGetSuggestionsFor

	| suggestions currentConfidenceRating |
	self assert: (self controller respondsTo: #getSuggestionsFor:).
	
	suggestions := self controller getSuggestionsFor: 'Mor'.
	self assert: suggestions class equals: SortedCollection.
	
	"suggestions should be sorted by ascending confidence rating"
	currentConfidenceRating := 0.
	suggestions do: [:suggestion |
		self assert: suggestion value >= currentConfidenceRating.
		currentConfidenceRating := suggestion value]