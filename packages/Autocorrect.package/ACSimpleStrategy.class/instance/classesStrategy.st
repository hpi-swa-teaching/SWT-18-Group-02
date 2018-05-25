accessing
classesStrategy
	^ classesStrategy ifNil:
			[classesStrategy := ACStrategyCompletionClasses registerTo: controller]