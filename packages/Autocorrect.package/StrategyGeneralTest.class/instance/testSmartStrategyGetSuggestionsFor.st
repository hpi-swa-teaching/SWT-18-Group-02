testcases
testSmartStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACSmartStrategy  registerTo: model) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACSmartStrategy  registerTo: model) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (ACSmartStrategy  registerTo: model) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'