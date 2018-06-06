enabling/disabling
enableFastModules

	<preference: 'Enable Only Fast Modules'
		category: 'Autocorrection'
		description: 'Enable just fast modules for Autocorrection, they may not recognize wrongly spelled words as well as the slower modules, but allow for faster typing.'
		type: #Boolean>
	^enableFastModules ifNil: [true]
