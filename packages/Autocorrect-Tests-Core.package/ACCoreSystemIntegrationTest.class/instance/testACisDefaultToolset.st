as yet unclassified
testACisDefaultToolset
	
	ACSystemIntegration setAsDefault.
	self assert:  ACToolSet equals: ToolSet default.
	ACSystemIntegration resetDefault.
	self assert: (ACToolSet = ToolSet default) not.