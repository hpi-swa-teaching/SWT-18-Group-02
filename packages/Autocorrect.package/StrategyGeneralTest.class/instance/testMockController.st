testcases
testMockController
	|suggestions|
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'Array'.	
	self assert:((suggestions at: 1) suggestion = 'Array') not.
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'list'.	
	self assert:((suggestions at: 1) suggestion = 'list') not