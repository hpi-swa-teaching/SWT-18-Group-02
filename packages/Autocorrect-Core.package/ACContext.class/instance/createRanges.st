model creation
createRanges
	| parser |
	parser := SHParserST80 new.
	self ranges: (parser 
				rangesIn: self source
				classOrMetaClass: self theClass
				workspace: nil
				environment: nil).
	(self ranges notEmpty and: [((self ranges at: 1) type = #undefinedIdentifier) or: [(self ranges at: 1) type = #excessCode]])
				ifTrue: [self ranges: self createRangesForMethod].
	self ranges: (self ranges select: [:each | each type ~= #comment]).

	