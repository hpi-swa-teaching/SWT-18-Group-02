as yet unclassified
ensureTablesInitialized

	self halt.
	default isNil ifTrue: [
		self initializeTables]