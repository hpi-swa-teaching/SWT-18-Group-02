testcases
testSmartStrategyGetSuggestionsFor
	|suggestions strategy|
	self halt.
	strategy := ACSmartStrategy  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (strategy) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (strategy) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'