as yet unclassified
completionAt: aNumber

	| entry |
	
	entry := (self entries at: aNumber) completion.
	"should update the CompletionTables used by the strategies
	self addEntry: entry."
	^ entry separateKeywords, ' '