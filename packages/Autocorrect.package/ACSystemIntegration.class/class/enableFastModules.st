preference
enableFastModules

	<preference: 'Enable Only Fast Modules'
		category: 'Autocorrection'
		description: 'Enable just fast modules for autocorrection'
		type: #Boolean>
	^enableFastModules ifNil: [true]
