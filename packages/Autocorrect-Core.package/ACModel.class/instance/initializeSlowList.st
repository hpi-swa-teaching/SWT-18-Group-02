accessing
initializeSlowList
	|list|
	list := ACSlowList newWith: self.
	self lookupTables add: (Association key: #ACSlowList value: list).
	^ list