testcases
testStrategyCompletionDefaultGetSuggestionsFor
	|suggestions|
	suggestions:= ACStrategyCompletionDefault new getSuggestionsFor: 'ifTr'.	
	self assert: (suggestions at: 1) key equals: 'ifTrue:'
	