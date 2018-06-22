testcases
testMockController
	|suggestions strategy|
	strategy := ACSlowStrategy registerTo: self model.
	model registerToStrategies: self context.
	suggestions:= strategy getSuggestionsFor:'Array'.	
	self assert:((suggestions at: 1) suggestion = 'Array') not.
	suggestions:= strategy getSuggestionsFor:'list'.	
	self assert:((suggestions at: 1) suggestion = 'list') not