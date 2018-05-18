testcases
testRatherSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACRatherSlowStrategy  registerTo: controller) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACRatherSlowStrategy  registerTo: controller) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (ACRatherSlowStrategy  registerTo: controller) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy' .
	suggestions:= (ACRatherSlowStrategy  registerTo: controller) getSuggestionsFor:'acmenumorp'.	
	self assert: (suggestions at: 1) key equals: 'ACMenuMorph'
	