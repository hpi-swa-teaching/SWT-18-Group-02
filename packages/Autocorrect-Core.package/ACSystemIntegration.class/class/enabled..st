preference
enabled: aBoolean
	enabled := aBoolean.
	
	aBoolean  ifTrue: [self setAsDefault. 
						self completionDefault: ECPreferences  enabled.
						ECPreferences enabled: false]
		ifFalse: [self resetDefault.
				ECPreferences enabled:  self completionDefault]