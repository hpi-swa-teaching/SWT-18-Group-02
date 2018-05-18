model creation
createModel
	|model|	
	model := ACModel
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors.
	controller expanded ifTrue: [model expand].
	^ model 