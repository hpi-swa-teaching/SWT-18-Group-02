testcases
testSmartStrategyGetSuggestionsForPreferablyFrom
	|suggestions strategy|
	strategy := ACSmartStrategy registerTo: self model.
	model registerToStrategies: self context.
	suggestions:= strategy getSuggestionsFor: 'morph' preferablyFrom: {'Morph'}.	
	self assert: (suggestions at: 1) suggestion equals: 'Morph'
	