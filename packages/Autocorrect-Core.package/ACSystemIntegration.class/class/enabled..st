preference
enabled: aBoolean
	enabled := aBoolean.
	
	aBoolean  ifTrue: [self setAsDefault]
		ifFalse: [self resetDefault]