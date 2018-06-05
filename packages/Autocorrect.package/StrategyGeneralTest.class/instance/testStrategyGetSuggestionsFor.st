testcases
testStrategyGetSuggestionsFor
	|strategy|
	strategy := ACStrategyCompletionClasses  registerTo: model.
	model registerToStrategies: context.
	
	self assert: ((strategy) getSuggestionsFor: 'Mor') class equals: SortedCollection.
	
	strategy := ACStrategyCompletionDefault  registerTo: model.
	model registerToStrategies: context.
	
	self assert: ((strategy) getSuggestionsFor: 'ifT') class equals: SortedCollection 
	