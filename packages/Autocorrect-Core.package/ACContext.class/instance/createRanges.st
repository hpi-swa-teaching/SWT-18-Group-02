model creation
createRanges
	| parser |
	parser := SHParserST80 new.
	self ranges: (parser 
				rangesIn: self source
				classOrMetaClass: self theClass
				workspace: nil
				environment: nil).
	(self ranges notEmpty and: [(self ranges first type = #undefinedIdentifier) or: [self ranges first type = #excessCode]])
				ifTrue: [self ranges: self createRangesForMethod]

	