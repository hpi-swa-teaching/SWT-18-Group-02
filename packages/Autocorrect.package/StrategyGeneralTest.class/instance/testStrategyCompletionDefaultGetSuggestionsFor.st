testcases
testStrategyCompletionDefaultGetSuggestionsFor
	|suggestions|
	suggestions:= (ACStrategyCompletionDefault registerTo: model) getSuggestionsFor: 'ifTr'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	