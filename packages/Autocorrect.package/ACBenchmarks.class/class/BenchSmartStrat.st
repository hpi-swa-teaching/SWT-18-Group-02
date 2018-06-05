as yet unclassified
BenchSmartStrat
|strat|
strat := (ACSmartStrategy registerTo: ACModel new) .
	strat getSuggestionsFor: 'm'.
	strat getSuggestionsFor: 'mo'.
	^ [strat getSuggestionsFor: 'mor']bench  