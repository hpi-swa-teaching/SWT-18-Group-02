context-handling
updateContextWith: aContext

	self context: aContext.
	self strategy updateContextWith: aContext.