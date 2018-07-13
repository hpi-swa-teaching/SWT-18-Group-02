as yet unclassified
benchmarkCurrentPerformance
|model collection strat context testString|
	collection := Dictionary new.
	model := ACModel new.
	ACModel defaultModules do: [:strategy |
		strat := strategy registerTo: model.
		strat calculateSuggestionsFor: 'm'.
		strat calculateSuggestionsFor: 'mo'.
		collection at: #calculateSuggestions put: [strat calculateSuggestionsFor: 'mor']bench.
		
		testString := ''.
		context := ACContext class: nil source: testString position: testString size.
		model registerToStrategies: context.
		collection at: #getSuggestionsNewStatement put: [strat getSuggestionsFor: 'mor']bench.
		
		testString := 'Morph n'.
		context := ACContext class: nil source: testString position: testString size.
		model registerToStrategies: context.
		collection at: #getSuggestionsClass put: [strat getSuggestionsFor: 'mor']bench].
		
	^ collection