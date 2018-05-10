testcases
testStrategyCompletionClassesGetSuggestionsFor
	|suggestions|
	suggestions:= (ACStrategyCompletionClasses registerTo: controller) getSuggestionsFor:'Mor'.	
	self assert: (suggestions at: 1) key equals: 'Morph'
	