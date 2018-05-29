testcases
testInitializeContextForEditor

	model initializeContextFor: ACMockEditor new.
	self assert: 'This is a test text' asString equals: model context source .
	self assert: 1 equals: model context position