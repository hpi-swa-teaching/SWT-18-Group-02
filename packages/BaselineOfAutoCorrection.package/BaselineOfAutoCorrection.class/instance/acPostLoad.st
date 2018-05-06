as yet unclassified
acPostLoad

	Smalltalk at: #ACToolSet ifPresent: [ :acToolSet |
		acToolSet register.
		ToolSet default: acToolSet ].
	self class testVar: 'Test'