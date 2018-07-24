stringHolderRelated
testStringHolderRemoveController
	|testStringHolder|
	
	testStringHolder := StringHolder new.
	testStringHolder updateController.
	testStringHolder removePreviousController.
	self assert: nil equals: (testStringHolder dependents detect: [ :dept | (dept isKindOf: ECController) or: [dept isKindOf: ACController]] ifNone: [nil]).
	testStringHolder release