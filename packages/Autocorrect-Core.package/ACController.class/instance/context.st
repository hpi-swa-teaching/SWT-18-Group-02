accessing
context 
	context ifNil: [context := self contextClass 
		class: nil  source: '' position: 0.
		self acmodel registerToStrategies: context].
	
	^ context