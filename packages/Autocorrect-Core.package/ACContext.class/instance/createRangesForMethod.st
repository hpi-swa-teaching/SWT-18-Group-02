model creation
createRangesForMethod
	| parser |
	parser := SHParserST80 new.
	parser parseAMethod: true.
	ranges := parser 
				rangesIn: source
				classOrMetaClass: theClass
				workspace: nil
				environment: nil.
	^ ranges
	