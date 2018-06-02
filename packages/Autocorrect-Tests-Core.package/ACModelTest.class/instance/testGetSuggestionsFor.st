testcases
testGetSuggestionsFor

	| suggestions currentSuggestion mockModel |
	
	mockModel := ACMockModel new.
	self assert: (mockModel respondsTo: #getSuggestionsFor:).
	
	suggestions := mockModel getSuggestionsFor: 'Mor'.
	self assert: suggestions class equals: SortedCollection.
	
	"suggestions should be sorted by ascending confidence rating"
	currentSuggestion:= suggestions at: 1.
	suggestions do: [:suggestion |
		self assert: currentSuggestion <= suggestion.
		currentSuggestion := suggestion ]