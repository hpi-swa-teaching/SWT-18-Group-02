testcases
testStrategyGetSuggestionsFor
	self assert: (ACStrategy new getSuggestionsFor: 'ifT') class equals: SortedCollection 
	