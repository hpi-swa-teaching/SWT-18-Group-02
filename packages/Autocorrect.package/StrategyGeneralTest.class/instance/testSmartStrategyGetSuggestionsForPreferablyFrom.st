testcases
testSmartStrategyGetSuggestionsForPreferablyFrom
	|suggestions|
	suggestions:= (ACSmartStrategy registerTo: model) getSuggestionsFor: 'morph' preferablyFrom: {'Morph'}.	
	self assert: (suggestions at: 1) suggestion equals: 'Morph'
	