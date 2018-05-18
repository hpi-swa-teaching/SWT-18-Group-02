testcases
testEditDistance
	self assert: ((ACStrategy registerTo: model)
		editDistanceBetween: 'Morph' and: 'Morp') equals: 1.
	self assert: ((ACStrategy registerTo: model)
		editDistanceBetween: 'Morph' and: 'Moorphs') equals: 2.
	self assert: ((ACStrategy registerTo: model)
		editDistanceBetween: 'Morph' and: 'Moroh') equals: 1
	