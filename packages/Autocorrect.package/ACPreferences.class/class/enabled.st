enabling/disabling
enabled
	<preference: 'Enable Autocorrection'
		category: 'Autocorrection'
		description: 'Enable or disable Autocorrection, which will replace the existing Autocorrection and give you recommendations even if you have minor typos in your syntax.'
		type: #Boolean>
	^enabled ifNil: [(ToolSet default = ACToolSet)]