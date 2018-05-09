strategy interface
getListOfType: aType
	(aType = #SimpleList)
		ifTrue: [^ self simpleList].
	(aType = #OTableClasses)
		ifTrue: [^ OCompletionTable classes].
	(aType = #OTableDefault)
		ifTrue: [^ OCompletionTable default].
		
	^ self error: 'There is no reference to a List of Type: #', aType