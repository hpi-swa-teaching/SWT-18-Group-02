accessing
context 
	context ifNil: [context := self contextClass 
		controller: self class: nil  source: '' position: 0].
	^ context