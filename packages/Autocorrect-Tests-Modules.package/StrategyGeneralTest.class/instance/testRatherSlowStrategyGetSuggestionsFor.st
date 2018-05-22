testcases
testRatherSlowStrategyGetSuggestionsFor
	|suggestions|
	suggestions:= (ACRatherSlowStrategy  registerTo: model) getSuggestionsFor:'ACSlowStrtegy'.	
	self assert: (suggestions at: 1) key equals: 'ACSlowStrategy'.	
	suggestions:= (ACRatherSlowStrategy  registerTo: model) getSuggestionsFor:'defaltStrategy'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy'.
	suggestions:= (ACRatherSlowStrategy  registerTo: model) getSuggestionsFor:'xdefaultStrategyx'.	
	self assert: (suggestions at: 1) key equals: 'defaultStrategy' .
	suggestions:= (ACRatherSlowStrategy  registerTo: model) getSuggestionsFor:'acmenumorp'.	
	self assert: (suggestions at: 1) key equals: 'ACMenuMorph' .
suggestions:= (ACRatherSlowStrategy  registerTo: model) getSuggestionsFor:'CAMenuMorph'.	
	self assert: (suggestions at: 1) key equals: 'ACMenuMorph' 
	
	