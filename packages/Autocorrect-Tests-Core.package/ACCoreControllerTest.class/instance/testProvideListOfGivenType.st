as yet unclassified
testProvideListOfGivenType
	
	self assert: (self controller getListOfType: #OTableClasses) equals: OCompletionTable classes.
	self assert: (self controller getListOfType: #OTableDefault) equals: OCompletionTable default