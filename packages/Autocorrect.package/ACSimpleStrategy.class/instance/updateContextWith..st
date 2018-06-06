as yet unclassified
updateContextWith: aContext

	context := aContext.
	self classesStrategy updateContextWith: aContext.
	self defaultStrategy updateContextWith: aContext.