as yet unclassified
setAsDefault

	self oldDefault: ToolSet default.
	Smalltalk at: #ACToolSet ifPresent: [ :acToolSet |
		ToolSet default: acToolSet ].