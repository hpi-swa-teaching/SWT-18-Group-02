accessing
addString: aString
	self collection add: (ACDatedEntry contents: aString date: DateAndTime now)
