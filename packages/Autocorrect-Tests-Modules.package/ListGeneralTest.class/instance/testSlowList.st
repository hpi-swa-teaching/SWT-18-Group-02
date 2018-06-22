as yet unclassified
testSlowList
	self assert: ((ACSlowList newWith: self controller) collection contains: [:entry |
		entry contents asString = 'Morph'])