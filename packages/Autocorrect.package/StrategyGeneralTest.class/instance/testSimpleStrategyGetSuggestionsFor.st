testcases
testSimpleStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSimpleStrategy  registerTo: model) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (ACSimpleStrategy  registerTo: model) getSuggestionsFor:'Moroh'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (ACSimpleStrategy  registerTo: model) getSuggestionsFor:'ifTure'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	