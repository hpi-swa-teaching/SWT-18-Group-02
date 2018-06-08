testcases
testSlowStrategyGetSuggestionsFor
	self assert: ACSlowStrategy corrects: 'ACSlowStrtegy' to: 'ACSlowStrategy'.
	self assert: ACSlowStrategy corrects: 'defaltStrategy' to: 'defaultStrategy'
	