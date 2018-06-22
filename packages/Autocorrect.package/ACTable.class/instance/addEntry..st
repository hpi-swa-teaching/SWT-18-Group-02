as yet unclassified
addEntry: aDatedEntry
	self at: (aDatedEntry contents) 
		ifPresent: [:entry | entry date: aDatedEntry date.
			self collection reSort] 
		ifAbsent: [self at: (aDatedEntry contents) put: aDatedEntry.
			self collection add: aDatedEntry]
