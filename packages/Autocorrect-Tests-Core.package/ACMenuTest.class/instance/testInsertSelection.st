as yet unclassified
testInsertSelection
	| model |
	
	model := ACModel new.
	model entries: OrderedCollection new.
	menu model: model.
	
	self assert: false equals: menu insertSelected.