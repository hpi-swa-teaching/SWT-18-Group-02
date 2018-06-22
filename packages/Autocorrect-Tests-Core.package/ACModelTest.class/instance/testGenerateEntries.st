testcases
testGenerateEntries

	self model narrowString: 'Mor'.
	self model registerToStrategies: (ACContext class: nil source: ''  position: 0).
	self assert: OrderedCollection equals: (self model generateEntries) class.
	self assert: (self model generateEntries) notEmpty.