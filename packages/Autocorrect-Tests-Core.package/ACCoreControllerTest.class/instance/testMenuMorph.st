as yet unclassified
testMenuMorph

	self assert: ACMenuMorph equals: controller menuMorphClass.
	controller expand.
	self assert: ACXMenuMorph equals: controller menuMorphClass