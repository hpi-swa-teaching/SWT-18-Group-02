as yet unclassified
ensureTablesInitialized

	self default isNil ifTrue: [
		self initializeTables]