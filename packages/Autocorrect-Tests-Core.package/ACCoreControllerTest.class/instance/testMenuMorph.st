as yet unclassified
testMenuMorph

	self assert: ACMenuMorph equals: self controller menuMorphClass.
	self controller expand.
	self assert: ACXMenuMorph equals: self controller menuMorphClass