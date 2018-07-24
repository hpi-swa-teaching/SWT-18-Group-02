strategyHandling
registerToStrategies: aContext
	self strategies do: [:strat | strat updateContextWith: aContext]