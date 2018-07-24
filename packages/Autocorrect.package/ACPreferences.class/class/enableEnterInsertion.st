keybinds
enableEnterInsertion
	<preference: 'Enter Insertion'
		category: 'Autocorrection'
		description: 'Enable/Disable the possibility to insert the selected correction by pressing enter.'
		type: #Boolean>
	^enableEnterInsertion ifNil: [true]
		