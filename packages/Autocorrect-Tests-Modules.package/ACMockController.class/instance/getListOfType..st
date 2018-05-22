as yet unclassified
getListOfType: aType
	(aType = #OTableClasses)
		ifTrue: [^ self mockOCompletionTableClasses].
	(aType = #OTableDefault)
		ifTrue: [^ self mockOCompletionTableDefault].
	(aType = #ACSlowList )
		ifTrue: [^ super getListOfType: aType ].
		
	^ self error: 'There is no reference to a List of Type: #', aType

	