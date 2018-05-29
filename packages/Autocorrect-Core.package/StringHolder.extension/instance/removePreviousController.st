*Autocorrect-Core
removePreviousController

	^ self dependents do: [ :dept | 
		((dept isKindOf: ECController) or: [dept isKindOf: ACController]) 
			ifTrue: [self removeDependent: dept]]