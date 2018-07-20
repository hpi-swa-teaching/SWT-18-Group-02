context-handling
updateContextWith: aContext

	self context: aContext.
	self classesStrategy updateContextWith: aContext.
	self defaultStrategy updateContextWith: aContext.