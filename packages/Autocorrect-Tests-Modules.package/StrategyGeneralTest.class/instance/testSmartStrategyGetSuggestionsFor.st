testcases
testSmartStrategyGetSuggestionsFor
	|suggestions strategy|
	strategy := ACSmartStrategy  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) calculateSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (strategy) calculateSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (strategy) calculateSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'