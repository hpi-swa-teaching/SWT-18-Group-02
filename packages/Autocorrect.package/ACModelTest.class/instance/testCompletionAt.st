testcases
testCompletionAt

	self model entries: ({ODatedEntry contents: 'Morph' type: #selector} asOrderedCollection).
	self assert: 'Morph ' equals: (self model completionAt: 1)