testcases
testGetPossibleSelectors
	|possibleSelectors|
	
	model context receiverClass: ACModel.
	possibleSelectors := model getPossibleSelectors.
	self assert: possibleSelectors class equals: OrderedCollection.
	model class selectors do: [ :selector |
		possibleSelectors includes: selector]