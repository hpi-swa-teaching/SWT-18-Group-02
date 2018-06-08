preference
enableEnterInsertion

	<preference: 'Enter Insertion'
		category: 'Autocorrection'
		description: 'Enable insertion by hitting enter'
		type: #Boolean>
	^enableEnterInsertion ifNil: [true]
		