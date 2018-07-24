contextHandling
initializeContextFor: anEditor	
	"Check if the method exist, to prevent a crash each time a key is pressed"
	| class |
	
	(self class respondsTo: #selectedClassOrMetaClass)
		ifTrue: [ class := self model selectedClassOrMetaClass ]
		ifFalse: [ class := nil ].
		
	self context: (self contextClass 
		class: class
		source: anEditor text string
		position: anEditor startIndex - 1).
		
	self context compute.	
	self acmodel registerToStrategies: self context.
