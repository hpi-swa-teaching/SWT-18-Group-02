enabling/disabling
feedback: aBoolean
	feedback := aBoolean.
	
	aBoolean  ifTrue: [ACFeedback open.
						feedback := false]