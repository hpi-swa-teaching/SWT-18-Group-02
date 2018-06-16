as yet unclassified
collection
	|defaultCollection classesCollection|
	defaultCollection:= self list default collection size <= self numberOfTestedStrings 
		ifTrue:[self list default collection]
		ifFalse:[self list default collection first: self numberOfTestedStrings].
	classesCollection:= self list classes collection size <= self numberOfTestedStrings 
		ifTrue:[self list classes collection]
		ifFalse:[self list classes collection first: self numberOfTestedStrings].
	^ defaultCollection union: classesCollection