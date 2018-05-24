as yet unclassified
testMenuMorph

	self assert: ACMenuMorph equals: controller menuMorph.
	controller expand.
	self assert: ACXMenuMorph equals: controller menuMorph