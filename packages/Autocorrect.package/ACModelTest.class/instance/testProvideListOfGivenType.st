testcases
testProvideListOfGivenType
	
	self assert: (model getListOfType: #OTableClasses) equals: OCompletionTable classes.
	self assert: (model getListOfType: #OTableDefault) equals: OCompletionTable default