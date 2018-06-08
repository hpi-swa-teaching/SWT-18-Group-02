testcases
assert: aStrategyClass corrects: aString to: resultString
	|suggestions strategy|
	strategy := aStrategyClass registerTo: model.
	model registerToStrategies: context.
	suggestions:= strategy calculateSuggestionsFor: aString.	
	self assert: (suggestions at: 1) suggestion equals: resultString
	