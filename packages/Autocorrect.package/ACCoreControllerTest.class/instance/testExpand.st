as yet unclassified
testExpand
	self assert: false equals: self controller expanded.
	self controller acmodel: ACModel new.
	self controller expand.
	self assert: true equals: self controller expanded