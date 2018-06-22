testcases
testProvideListOfGivenType
	
	self assert: (self model getListOfType: #OTableClasses) equals: OCompletionTable classes.
	self assert: (self model getListOfType: #OTableDefault) equals: OCompletionTable default