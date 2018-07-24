accessing
completionAt: aNumber
	| entry |
	
	entry := (self entries at: aNumber) completion.
	
	^ entry separateKeywords, ' '