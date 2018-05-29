as yet unclassified
resetDefault

	(ToolSet default = (Smalltalk at: #ACToolSet))
		ifTrue: [
			ToolSet default: self oldDefault.
			(self oldDefault = (Smalltalk at: #ACToolSet))
				ifTrue: [
					(self supressMessages) ifFalse: [
						(UIManager default 
							confirm: 'You are resetting from ACToolSet to ACToolSet. 
Do you want to choose again which ToolSet you would like to use?' 
							trueChoice: 'Yes'
							falseChoice: 'No, ACToolSet is fine')
							ifTrue: [ToolSet askForDefault]]
						ifTrue: [ToolSet default: ECToolSet]]]
		ifFalse: [ (self supressMessages) ifFalse: [
				UIManager default inform: 'We could not reset your default ToolSet, as we are not currently the default.
Please check if you had any other ToolSet enabled.']].
	StringHolder allInstances do: [ :aStringHolder | aStringHolder updateController]