as yet unclassified
testItemCount
	|model|

	model := ACModel new.
	model entries: OrderedCollection new.
	self menu model: model.
	self assert: 3 >= self menu itemsCount