accessing
strategy
	^ strategy ifNil:
			[strategy := ACRatherSlowStrategy use: controller]