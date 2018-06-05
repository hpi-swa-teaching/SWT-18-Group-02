testcases
testMockController
	|suggestions strategy|
	strategy := ACSlowStrategy  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor:'Array'.	
	self assert:((suggestions at: 1) key = 'Array') not.
	suggestions:= (strategy) getSuggestionsFor:'list'.	
	self assert:((suggestions at: 1) key = 'list') not