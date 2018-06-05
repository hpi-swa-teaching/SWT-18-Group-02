initialization
initializeContextFor: anEditor
	
	| class |
	"Check if the method exist, to prevent a crash each time a key is pressed"
	(self class respondsTo: #selectedClassOrMetaClass)
		ifTrue: [ class := self model selectedClassOrMetaClass ]
		ifFalse: [ class := nil ].
		
	context := self contextClass 
		controller: nil
		class: class
		source: anEditor text string
		position: anEditor startIndex - 1.
		
	context compute.	
