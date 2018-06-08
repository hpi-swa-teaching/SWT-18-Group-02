testcases
testStrategyGetSuggestionsFor
	|strategy|
	strategy := ACStrategyCompletionClasses  registerTo: model.
	model registerToStrategies: context.
	
	self assert: ((strategy) calculateSuggestionsFor: 'Mor') class equals: SortedCollection.
	
	strategy := ACStrategyCompletionDefault  registerTo: model.
	model registerToStrategies: context.
	
	self assert: ((strategy) calculateSuggestionsFor: 'ifT') class equals: SortedCollection 
	