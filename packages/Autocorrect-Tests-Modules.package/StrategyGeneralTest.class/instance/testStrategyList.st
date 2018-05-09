testcases
testStrategyList
	self assert: (ACStrategyCompletionClasses registerTo: controller) list notNil.
	self assert: (ACStrategyCompletionDefault registerTo: controller) list notNil 
	