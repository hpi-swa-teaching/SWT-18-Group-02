testcases
testSmartStrategyGetSuggestionsFor
	self assert: ACSmartStrategy corrects: 'ACSlowStrtegy' to: 'ACSlowStrategy'.
	self assert: ACSmartStrategy corrects: 'defaltStrategy' to: 'defaultStrategy'.
	self assert: ACSmartStrategy corrects: 'xdefaultStrategyx' to: 'defaultStrategy'.
	self assert: ACSmartStrategy corrects: 'if' to: 'ifFalse:'