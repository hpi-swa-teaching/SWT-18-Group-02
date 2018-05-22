strategy interface
getListOfType: aType
	(aType = #OTableClasses)
		ifTrue: [^ OCompletionTable classes].
	(aType = #OTableDefault)
		ifTrue: [^ OCompletionTable default].
	(aType = #ACSlowList )
		ifTrue: [^ self slowList ].
		
	^ self error: 'There is no reference to a List of Type: #', aType