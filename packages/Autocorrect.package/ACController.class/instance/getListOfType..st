strategy interface
getListOfType: aType
	(aType = #OTableClasses)
		ifTrue: [^ OCompletionTable classes].
	(aType = #OTableDefault)
		ifTrue: [^ OCompletionTable default].
	(aType = #ACSlowList )
		ifTrue: [^ ACSlowList new].
		
	^ self error: 'There is no reference to a List of Type: #', aType