accessing
defaultStrategy
	defaultStrategy ifNil:
		[defaultStrategy := ACStrategyCompletionDefault  registerTo: self model.
		defaultStrategy context: self context].
	^ defaultStrategy