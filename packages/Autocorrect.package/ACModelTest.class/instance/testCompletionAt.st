testcases
testCompletionAt

	model entries: ({ODatedEntry contents: 'Morph' type: #selector} asOrderedCollection).
	self assert: 'Morph ' equals: (model completionAt: 1)