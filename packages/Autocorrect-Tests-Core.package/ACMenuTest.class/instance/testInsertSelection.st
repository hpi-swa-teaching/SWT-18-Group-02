as yet unclassified
testInsertSelection
	| model |
	
	model := ACModel new.
	menu model: model.
	
	self assert: false equals: menu insertSelected.