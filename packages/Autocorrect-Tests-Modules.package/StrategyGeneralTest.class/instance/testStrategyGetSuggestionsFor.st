testcases
testStrategyGetSuggestionsFor
	self assert: ((ACStrategyCompletionClasses registerTo: model) getSuggestionsFor: 'Mor') class equals: SortedCollection.
	self assert: ((ACStrategyCompletionDefault registerTo: model) getSuggestionsFor: 'ifT') class equals: SortedCollection 
	