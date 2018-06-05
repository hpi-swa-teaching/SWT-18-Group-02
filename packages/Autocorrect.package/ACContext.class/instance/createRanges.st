model creation
createRanges
	| parser |
	parser := SHParserST80 new.
	ranges := parser 
				rangesIn: source
				classOrMetaClass: theClass
				workspace: workspace
				environment: nil.
	ranges := ranges select: [:each | each type ~= #comment]