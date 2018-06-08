as yet unclassified
testSlowList
	self assert: ((ACSlowList newWith: controller) collection contains: [:entry |
		entry contents asString = 'Morph'])