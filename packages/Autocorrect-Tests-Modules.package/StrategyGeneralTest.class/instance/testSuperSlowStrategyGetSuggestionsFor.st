testcases
testSuperSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSuperSlowStrategy  registerTo: model) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACSuperSlowStrategy  registerTo: model) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (ACSuperSlowStrategy  registerTo: model) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'