testcases
testSlowStrategyGetSuggestionsFor
	|suggestions strategy|
	strategy := ACSlowStrategy  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (strategy) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'
	