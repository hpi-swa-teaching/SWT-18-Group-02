accessing
context 
	context ifNil: [context := contextClass 
		controller: self class: context  source: '' position: 0].
	^ context