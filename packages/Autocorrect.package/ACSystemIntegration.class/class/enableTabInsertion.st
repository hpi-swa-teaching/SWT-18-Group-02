preference
enableTabInsertion

	<preference: 'Tab Insertion'
		category: 'Autocorrection'
		description: 'Enable insertion by hitting tab. It is recommended to leave this preference enabled at all time.'
		type: #Boolean>
	^enableTabInsertion ifNil: [true]
		