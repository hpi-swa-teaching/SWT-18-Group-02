testcases
testStrategyList
	self assert: (ACStrategyCompletionClasses registerTo: model) list notNil.
	self assert: (ACStrategyCompletionDefault registerTo: model) list notNil 
	