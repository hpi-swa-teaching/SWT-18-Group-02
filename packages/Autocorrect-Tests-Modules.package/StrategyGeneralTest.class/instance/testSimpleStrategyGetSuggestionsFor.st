testcases
testSimpleStrategyGetSuggestionsFor
	|suggestions strategy|
	strategy := ACSimpleStrategy  registerTo: model.
	model registerToStrategies: context.
	suggestions:= (strategy) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (strategy) getSuggestionsFor:'Moroh'.	
	self assert: (suggestions at: 1) key equals: 'Morph'.
	suggestions:= (strategy) getSuggestionsFor:'ifTure'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	