as yet unclassified
BenchmarkCurrentPerformance
|model collection strat|
collection := OrderedCollection new.
model := ACModel new.
ACModel defaultModules do: [:strategy |
	collection add: strategy className.
	strat := strategy registerTo: model.
	strat calculateSuggestionsFor: 'm'.
	strat calculateSuggestionsFor: 'mo'.
	collection add: [strat calculateSuggestionsFor: 'mor']bench].
^ collection