enabling/disabling
enabled: aBoolean
	enabled := aBoolean.
	
	aBoolean  ifTrue: [ACSystemIntegration setAsDefault. 
						self completionDefault: ECPreferences  enabled.
						ECPreferences enabled: false]
		ifFalse: [ACSystemIntegration resetDefault.
				ECPreferences enabled:  (self completionDefault ifNil: [true])]