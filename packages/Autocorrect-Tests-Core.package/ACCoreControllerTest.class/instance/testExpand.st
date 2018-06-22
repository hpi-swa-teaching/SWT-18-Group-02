as yet unclassified
testExpand

	self assert: false equals: self controller expanded.
	self controller acmodel: ACModel new.
	"self assert: (controller acmodel class allSelectors includes: #expand)."
	self controller expand.
	self assert: true equals: self controller expanded