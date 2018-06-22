testcases
testExtendedStrategyGetSuggestionsFor
	self assert: ACExtendedStrategy corrects: 'ACSlowStrtegy' to: 'ACSlowStrategy'.
	self assert: ACExtendedStrategy corrects: 'defaltStrategy' to: 'defaultStrategy'.
	self assert: ACExtendedStrategy corrects: 'xdefaultStrategyx' to: 'defaultStrategy'.
	self assert: ACExtendedStrategy corrects: 'if' to: 'ifFalse:'