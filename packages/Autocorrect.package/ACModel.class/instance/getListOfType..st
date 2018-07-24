interface
getListOfType: aType
	(aType = #OTableClasses)
		ifTrue: [^ OCompletionTable classes].
	(aType = #OTableDefault)
		ifTrue: [^ OCompletionTable default].
	(aType = #ACSlowList )
		ifTrue: [^ self lookupTables at: aType ifAbsent: self initializeSlowList].
	(aType = #ACTable)
		ifTrue: [^ ACTable].
		
	^ self error: 'There is no reference to a List of Type: #', aType