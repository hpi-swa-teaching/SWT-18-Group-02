enabling/disabling
feedback
	<preference: 'Give Feedback'
		category: 'Autocorrection'
		description: 'Enable to trigger a dialog allowing you to give us feedback through our github issues.'
		type: #Boolean>
	^feedback ifNil: [false]