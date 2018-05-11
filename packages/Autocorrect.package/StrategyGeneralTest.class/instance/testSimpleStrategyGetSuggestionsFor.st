testcases
testSimpleStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSimpleStrategy  registerTo: controller) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (ACSimpleStrategy  registerTo: controller) getSuggestionsFor:'Moroh'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (ACSimpleStrategy  registerTo: controller) getSuggestionsFor:'ifTure'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	