testcases
testSmartStrategyGetSuggestionsForPreferablyFrom
	|suggestions strategy|
	strategy := ACSmartStrategy registerTo: model.
	model registerToStrategies: context.
	suggestions:= strategy getSuggestionsFor: 'morph' preferablyFrom: {'Morph'}.	
	self assert: (suggestions at: 1) suggestion equals: 'Morph'
	