initialize-release
setClass: aClass source: aString position: anInteger

	self theClass: aClass.
	self source: aString.
	self position: anInteger.
	self createRanges.
	self compute.