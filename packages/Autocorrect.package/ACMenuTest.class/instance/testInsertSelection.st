as yet unclassified
testInsertSelection
	| model |
	
	model := ACModel new.
	model entries: OrderedCollection new.
	self menu model: model.
	
	self assert: false equals: self menu insertSelected.