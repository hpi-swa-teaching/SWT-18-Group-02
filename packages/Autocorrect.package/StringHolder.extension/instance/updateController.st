*Autocorrect-Core
updateController

	((ToolSet default) = ACToolSet) 
		ifTrue: 
			[self dependents do: [ :dept | (dept isKindOf: ECController) ifTrue: [self removeDependent: dept]].
			^ self initializeCorrectionController ]
		ifFalse: 
			[self dependents do: [ :dept | (dept isKindOf: ACController) ifTrue: [self removeDependent: dept]].
			^ self initializeCompletionController ].