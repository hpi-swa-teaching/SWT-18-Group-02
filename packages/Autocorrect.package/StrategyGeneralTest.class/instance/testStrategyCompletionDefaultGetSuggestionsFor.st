testcases
testStrategyCompletionDefaultGetSuggestionsFor
	|suggestions strategy|
	strategy := ACStrategyCompletionDefault  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor: 'ifTr'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	