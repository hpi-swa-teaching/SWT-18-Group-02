accessing
classesStrategy
	classesStrategy ifNil:
		[classesStrategy := ACStrategyCompletionClasses registerTo: model.
		classesStrategy context: context].
	^ classesStrategy