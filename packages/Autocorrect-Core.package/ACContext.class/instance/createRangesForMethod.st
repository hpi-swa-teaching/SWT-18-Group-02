private
createRangesForMethod
	| parser |
	parser := SHParserST80 new.
	parser parseAMethod: true.
	self ranges: (parser 
				rangesIn: self source
				classOrMetaClass: self theClass
				workspace: nil
				environment: nil).
	^ self ranges
	