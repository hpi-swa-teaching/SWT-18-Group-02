testcases
testRatherSlowStrategyGetSuggestionsFor
	self assert: ACRatherSlowStrategy corrects: 'ACSlowStrtegy' to: 'ACSlowStrategy'.
	self assert: ACRatherSlowStrategy corrects: 'defaltStrategy' to: 'defaultStrategy'.
	self assert: ACRatherSlowStrategy corrects: 'xdefaultStrategyx' to: 'defaultStrategy'.
	self assert: ACRatherSlowStrategy corrects: 'acmenumorp' to: 'ACMenuMorph'.
	self assert: ACRatherSlowStrategy corrects: 'CAMenuMorph' to: 'ACMenuMorph'
	
	