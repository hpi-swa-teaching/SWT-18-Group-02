as yet unclassified
testExpand

	self assert: false equals: controller expanded.
	controller acmodel: ACModel new.
	"self assert: (controller acmodel class allSelectors includes: #expand)."
	controller expand.
	self assert: true equals: controller expanded