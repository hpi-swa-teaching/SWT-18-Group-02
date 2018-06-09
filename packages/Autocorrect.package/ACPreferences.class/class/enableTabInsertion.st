keybinds
enableTabInsertion

	<preference: 'Tab Insertion'
		category: 'Autocorrection'
		description: 'Enable/Disable the possibility to insert the selected correction by pressing tab. It is recommended to leave this preference enabled at all time.'
		type: #Boolean>
	^enableTabInsertion ifNil: [true]
		