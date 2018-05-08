as yet unclassified
calcCorrection: aString
	|counter|
	self reset.
	counter := 0.
	[self expected isEmpty] whileTrue:[ 
		self calcSubstrCorrection: (aString first:((aString size) - counter)).
		counter := counter + 1].
	^ self expected