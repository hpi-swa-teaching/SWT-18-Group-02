*Autocorrect-Core
updateController

	self removePreviousController.
	((ToolSet default) = ACToolSet) 
		ifTrue: 
			[^ self initializeCorrectionController ]
		ifFalse: 
			[^ self initializeCompletionController ].