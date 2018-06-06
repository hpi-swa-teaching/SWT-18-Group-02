as yet unclassified
testItemCount
	|model|

	model := ACModel new.
	model entries: OrderedCollection new.
	menu model: model.
	
	self assert: 3 >= menu itemsCount