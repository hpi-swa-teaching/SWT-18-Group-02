testcases
testStrategyCompletionClassesGetSuggestionsFor
	|suggestions strategy|
	strategy := ACStrategyCompletionClasses  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'
	