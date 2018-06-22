as yet unclassified
updateTableFor: aString
	|size|
	size:= aString size min: self requested size.
	(aString first: size) = (self requested first: size) ifFalse: [self setupNewTable].
	((aString size >= 1) and: [self requested size = 0]) ifTrue: [self setupNewTable].
	(self requested size < 2 and: [aString size >= 2]) ifTrue: [self addEntriesMatching: aString].
	self requested: aString
	