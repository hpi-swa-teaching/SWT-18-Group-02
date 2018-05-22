accessing
initializeSlowList
	|list|
	list := ACSlowList new.
	self lookupTables add: (Association key: #ACSlowList value: list).
	^ list