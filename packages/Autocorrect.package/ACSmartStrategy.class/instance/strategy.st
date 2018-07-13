accessing
strategy
	strategy ifNil:
		[strategy := ACRatherSlowStrategy use: self model.
		strategy context: self context].
	^ strategy