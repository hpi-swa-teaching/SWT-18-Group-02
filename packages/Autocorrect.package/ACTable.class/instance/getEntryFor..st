lookUp access
getEntryFor: aString
	^ self at: aString ifAbsent: [ACDatedEntry contents: aString date: self oldestDate]