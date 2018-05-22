testcases
testMockController
	|suggestions|
	suggestions:= (ACSlowStrategy  registerTo: controller) getSuggestionsFor:'Array'.	
	self assert:((suggestions at: 1) key = 'Array') not.
	suggestions:= (ACSlowStrategy  registerTo: controller) getSuggestionsFor:'list'.	
	self assert:((suggestions at: 1) key = 'list') not