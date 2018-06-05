testcases
testGetSuggestionsFor

	| suggestions currentConfidenceRating mockModel |
	
	mockModel := ACMockModel new.
	mockModel registerToStrategies: (ACContext class: nil source: ''  position: 0).
	self assert: (mockModel respondsTo: #getSuggestionsFor:).
	
	suggestions := mockModel getSuggestionsFor: 'Mor'.
	self assert: suggestions class equals: SortedCollection.
	
	"suggestions should be sorted by ascending confidence rating"
	currentConfidenceRating := 0.
	suggestions do: [:suggestion |
		self assert: suggestion value >= currentConfidenceRating.
		currentConfidenceRating := suggestion value]