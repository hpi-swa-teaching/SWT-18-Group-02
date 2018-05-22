testcases
testMockController
	|suggestions|
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'Array'.	
	self assert:((suggestions at: 1) key = 'Array') not.
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'list'.	
	self assert:((suggestions at: 1) key = 'list') not