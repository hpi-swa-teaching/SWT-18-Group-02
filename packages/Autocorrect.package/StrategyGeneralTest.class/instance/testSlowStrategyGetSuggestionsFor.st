testcases
testSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSlowStrategy  registerTo: controller) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACSlowStrategy  registerTo: controller) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'
	