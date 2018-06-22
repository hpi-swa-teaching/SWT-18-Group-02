accessing
defaultStrategy
	defaultStrategy ifNil:
		[defaultStrategy := ACStrategyCompletionDefault  registerTo: model.
		defaultStrategy context: context].
	^ defaultStrategy