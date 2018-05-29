testcases
testGenerateTypedEntries
	
	model narrowString: 'Mor'.
	model context receiverClass: ACModel.
	self assert: OrderedCollection equals: (model generateTypedEntries) class.
	self assert: (model generateTypedEntries) notEmpty.