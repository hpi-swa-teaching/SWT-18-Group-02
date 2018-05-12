testcases
testSuperSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSuperSlowStrategy  registerTo: controller) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACSuperSlowStrategy  registerTo: controller) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (ACSuperSlowStrategy  registerTo: controller) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'