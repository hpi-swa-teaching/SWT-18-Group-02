initialization
initialize 
	self acmodel: (ACModel
		class: nil
		temporaries: nil
		additionals: self additionals
		variables: false
		selectors: true).
	self expanded ifTrue: [self acmodel expand]