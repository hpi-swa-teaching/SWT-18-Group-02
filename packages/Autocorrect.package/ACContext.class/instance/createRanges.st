model creation
createRanges
	| parser |
	parser := SHParserST80 new.
	ranges := parser 
				rangesIn: source
				classOrMetaClass: theClass
				workspace: nil
				environment: nil.
	(ranges notEmpty and: [((ranges at: 1) type = #undefinedIdentifier) or: [(ranges at: 1) type = #excessCode]])
				ifTrue: [ranges := self createRangesForMethod].
	ranges := ranges select: [:each | each type ~= #comment].

	