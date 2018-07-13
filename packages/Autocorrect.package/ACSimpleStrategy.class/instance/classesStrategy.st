accessing
classesStrategy
	classesStrategy ifNil:
		[classesStrategy := ACStrategyCompletionClasses registerTo: self model.
		classesStrategy context: self context].
	^ classesStrategy