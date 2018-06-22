as yet unclassified
benchmarkCurrentPerformance
|model collection strat|
collection := OrderedCollection new.
model := ACModel new.
ACModel defaultModules do: [:strategy |
	collection add: strategy className.
	collection add: [strat := strategy registerTo: model.
	strat calculateSuggestionsFor: 'M'.
	strat calculateSuggestionsFor: 'Mo'.
	strat calculateSuggestionsFor: 'Mor'.
	strat calculateSuggestionsFor: 'Morp'.
	strat calculateSuggestionsFor: 'Morph'.	
	strat calculateSuggestionsFor: 'l'.
	strat calculateSuggestionsFor: 'li'.
	strat calculateSuggestionsFor: 'lis'.]bench].
^ collection