as yet unclassified
getListOfType: aType
	(aType = #OTableClasses)
		ifTrue: [^ self mockOCompletionTableClasses].
	(aType = #OTableDefault)
		ifTrue: [^ self mockOCompletionTableDefault].
	(aType = #ACSlowList )
		ifTrue: [^ self slowList ].
		
	^ self error: 'There is no reference to a List of Type: #', aType

	