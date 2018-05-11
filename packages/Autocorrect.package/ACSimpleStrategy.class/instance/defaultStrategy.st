accessing
defaultStrategy
	^ defaultStrategy ifNil:
			[defaultStrategy := ACStrategyCompletionDefault  registerTo: controller].