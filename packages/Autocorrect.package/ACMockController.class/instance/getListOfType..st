as yet unclassified
getListOfType: aType
	(aType = #SimpleList)
		ifTrue: [^ self mockSimpleList].
	(aType = #OTableClasses)
		ifTrue: [^ self mockOCompletionTableClasses].
	(aType = #OTableDefault)
		ifTrue: [^ self mockOCompletionTableDefault].
	(aType = #ACSlowList )
		ifTrue: [^ self mockACSlowList].
		
	^ self error: 'There is no reference to a List of Type: #', aType

	