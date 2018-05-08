testcases
testStrategyCompletionClassesGetSuggestionsFor
	|suggestions|
	suggestions:= ACStrategyCompletionClasses new getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'
	