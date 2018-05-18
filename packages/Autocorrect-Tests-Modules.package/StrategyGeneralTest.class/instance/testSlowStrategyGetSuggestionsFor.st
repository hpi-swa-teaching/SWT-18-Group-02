testcases
testSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACSlowStrategy  registerTo: model) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'
	