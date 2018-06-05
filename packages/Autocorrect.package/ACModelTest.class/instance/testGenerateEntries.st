testcases
testGenerateEntries

	model narrowString: 'Mor'.
	model registerToStrategies: (ACContext class: nil source: ''  position: 0).
	self assert: OrderedCollection equals: (model generateEntries) class.
	self assert: (model generateEntries) notEmpty.