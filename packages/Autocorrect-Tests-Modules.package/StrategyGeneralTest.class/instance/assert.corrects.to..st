testcases
assert: aStrategyClass corrects: aString to: resultString
	|suggestions|
	suggestions:= (aStrategyClass registerTo: model) getSuggestionsFor: aString.	
	self assert: (suggestions at: 1) suggestion equals: resultString
	