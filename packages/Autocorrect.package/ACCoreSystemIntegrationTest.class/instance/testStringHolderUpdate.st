stringHolderRelated
testStringHolderUpdate
|testStringHolder currentController|

	testStringHolder := StringHolder new.
	currentController := testStringHolder updateController.
	
	(ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ self assert: currentController class equals: OController ]
		ifTrue: [ self assert: currentController class equals: ECController ]).
		
	self assert: currentController model equals: testStringHolder.
	
	ACSystemIntegration setAsDefault.
	currentController := testStringHolder updateController.
	self assert: currentController class equals: ACController.
	self assert: currentController model equals: testStringHolder.
	ACSystemIntegration resetDefault.
	
	testStringHolder release