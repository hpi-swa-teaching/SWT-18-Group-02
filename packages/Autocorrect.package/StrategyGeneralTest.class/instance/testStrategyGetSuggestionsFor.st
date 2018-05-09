testcases
testStrategyGetSuggestionsFor
	self assert: ((ACStrategyCompletionClasses registerTo: controller) getSuggestionsFor: 'Mor') class equals: SortedCollection.
	self assert: ((ACStrategyCompletionDefault registerTo: controller) getSuggestionsFor: 'ifT') class equals: SortedCollection 
	