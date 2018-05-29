testcases
testGenerateEntries

	model narrowString: 'Mor'.
	self assert: OrderedCollection equals: (model generateEntries) class.
	self assert: (model generateEntries) notEmpty.