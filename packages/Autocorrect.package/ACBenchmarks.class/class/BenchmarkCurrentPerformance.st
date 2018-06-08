as yet unclassified
BenchmarkCurrentPerformance
|model collection strat|
collection := OrderedCollection new.
model := ACModel new.
ACModel defaultModules do: [:strategy |
	collection add: strategy className.
	strat := strategy registerTo: model.
	strat getSuggestionsFor: 'm'.
	strat getSuggestionsFor: 'mo'.
	collection add: [strat getSuggestionsFor: 'mor']bench].
^ collection