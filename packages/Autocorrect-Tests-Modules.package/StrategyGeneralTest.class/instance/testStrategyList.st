testcases
testStrategyList
	self assert: (ACStrategyCompletionClasses registerTo: self model) list notNil.
	self assert: (ACStrategyCompletionDefault registerTo: self model) list notNil 
	