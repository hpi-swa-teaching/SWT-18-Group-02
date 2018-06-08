testcases
testSuperSlowStrategyGetSuggestionsFor
	self assert: ACSuperSlowStrategy corrects: 'ACSlowStrtegy' to: 'ACSlowStrategy'.
	self assert: ACSuperSlowStrategy corrects: 'defaltStrategy' to: 'defaultStrategy'.
	self assert: ACSuperSlowStrategy corrects: 'xdefaultStrategyx' to: 'defaultStrategy'