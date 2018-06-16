as yet unclassified
testACTable
	self assert: (ACTable default collection contains: [:entry |
		entry contents = 'new']).
	self assert: (ACTable classes collection contains: [:entry |
		entry contents = 'Morph'])