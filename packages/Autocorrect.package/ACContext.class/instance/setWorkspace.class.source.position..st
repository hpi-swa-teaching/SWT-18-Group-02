as yet unclassified
setWorkspace: aWorkspace class: aClass source: aString position: anInteger
	
	workspace := aWorkspace.
	theClass := aClass.
	source := aString.
	position := anInteger.
	self createRanges.
	self compute.