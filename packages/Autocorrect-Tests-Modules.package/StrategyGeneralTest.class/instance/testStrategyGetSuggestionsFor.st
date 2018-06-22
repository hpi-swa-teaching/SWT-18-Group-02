testcases
testStrategyGetSuggestionsFor
	|strategy|
	strategy := ACStrategyCompletionClasses  registerTo: self model.
	model registerToStrategies: self context.
	
	self assert: ((strategy) calculateSuggestionsFor: 'Mor') class equals: SortedCollection.
	
	strategy := ACStrategyCompletionDefault  registerTo: self model.
	self model registerToStrategies: self context.
	
	self assert: ((strategy) calculateSuggestionsFor: 'ifT') class equals: SortedCollection 
	