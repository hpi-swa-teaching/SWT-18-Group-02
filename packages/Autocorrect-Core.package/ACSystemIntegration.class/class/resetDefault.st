as yet unclassified
resetDefault

	(ToolSet default = (Smalltalk at: #ACToolSet))
		ifTrue: [ToolSet default: self oldDefault]
		ifFalse: [UIManager default inform: 'We could not reset your default ToolSet, as we are not currently the default.
Please check if you had any other ToolSet enabled.']