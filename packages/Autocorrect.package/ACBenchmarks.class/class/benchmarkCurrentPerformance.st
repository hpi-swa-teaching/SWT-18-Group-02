benchmarking
benchmarkCurrentPerformance
|model collection strat context|
	collection := Dictionary new.
	model := ACModel new.
	ACModel defaultModules do: [:strategy |
		strat := strategy registerTo: model.
		strat calculateSuggestionsFor: 'm'.
		strat calculateSuggestionsFor: 'mo'.
		collection at: #calculateSuggestions put: [strat calculateSuggestionsFor: 'mor']bench.
		
		context := ACContext class: nil source: '' position: 0.
		model registerToStrategies: context.
		collection at: #getSuggestionsNewStatement put: [strat getSuggestionsFor: 'mor']bench.
		
		context := ACContext class: nil source: 'Morph n' position: 7.
		model registerToStrategies: context.
		collection at: #getSuggestionsClass put: [strat getSuggestionsFor: 'mor']bench].
		
	^ collection