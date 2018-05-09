testcases
testStrategyCompletionDefaultGetSuggestionsFor
	|suggestions|
	suggestions:= (ACStrategyCompletionDefault registerTo: controller) getSuggestionsFor: 'ifTr'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	