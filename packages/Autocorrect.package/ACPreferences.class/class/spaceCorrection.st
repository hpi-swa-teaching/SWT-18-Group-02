keybinds
spaceCorrection
	<preference: 'Space Insertion'
		category: 'Autocorrection'
		description: 'Enable/Disable the possibility to insert the selected correction by pressing space. This basically equals an automatic autocorrection as each time you finish a word it will insert the most likely (if no other is selected) correction.'
		type: #Boolean>
	^spaceCorrection ifNil: [false]