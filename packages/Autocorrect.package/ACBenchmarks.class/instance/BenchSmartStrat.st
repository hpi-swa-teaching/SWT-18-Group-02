as yet unclassified
BenchSmartStrat
|suggestions model strat|
	model := ACModel new.
	strat := ACSmartStrategy  registerTo: model.
	[suggestions:= strat getSuggestionsFor:'ACSlowStrtegy'.] bench. '1.64 per second. 612 milliseconds per run.'