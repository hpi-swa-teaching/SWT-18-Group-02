accessing
strategy
	^ strategy ifNil:
			[strategy := ACRatherSlowStrategy use: model.
			strategy context: context.
			^ strategy]