testcases
testStrategyCompletionClassesGetSuggestionsFor
	|suggestions|
	suggestions:= (ACStrategyCompletionClasses registerTo: model) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'
	