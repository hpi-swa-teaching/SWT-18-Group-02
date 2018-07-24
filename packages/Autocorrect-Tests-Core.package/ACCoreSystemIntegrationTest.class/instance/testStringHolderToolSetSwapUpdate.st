stringHolderRelated
testStringHolderToolSetSwapUpdate
	|testStringHolder currentController|

	testStringHolder := StringHolder new.
	currentController := testStringHolder correctionController.
	(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ self assert: currentController class equals: OController ]
		ifTrue: [ self assert: currentController class equals: ECController ]).
		
	ACSystemIntegration setAsDefault.

	self assert: (testStringHolder dependents detect: [ :dept | dept isKindOf: ACController] ifNone: [nil]) notNil. 
	self assert: nil equals: (testStringHolder dependents detect: [ :dept | dept class = OController or: [dept class = ECController]] ifNone: [nil]).
	
	ACSystemIntegration resetDefault.
	
	self assert: (testStringHolder dependents detect: [ :dept | dept class = OController or: [dept class = ECController]] ifNone: [nil]) notNil.
	self assert: nil equals: (testStringHolder dependents detect: [ :dept | dept isKindOf: ACController] ifNone: [nil]). 
	testStringHolder release
		