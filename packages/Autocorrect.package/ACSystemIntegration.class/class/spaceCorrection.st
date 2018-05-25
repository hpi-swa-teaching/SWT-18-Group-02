preference
spaceCorrection
	
	<preference: 'Insert best suggestion on hitting space'
		category: 'Autocorrection'
		description: 'Enable automatic insertion of best suggestion when the user hits space'
		type: #Boolean>
		
	^spaceCorrection ifNil: [false]