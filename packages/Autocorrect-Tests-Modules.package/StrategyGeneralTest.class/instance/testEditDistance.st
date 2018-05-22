testcases
testEditDistance
	self assert: ((ACStrategy registerTo: controller)
		editDistanceBetween: 'Morph' and: 'Morp') equals: 1.
	self assert: ((ACStrategy registerTo: controller)
		editDistanceBetween: 'Morph' and: 'Moorphs') equals: 2.
	self assert: ((ACStrategy registerTo: controller)
		editDistanceBetween: 'Morph' and: 'Moroh') equals: 1.
	self assert: ((ACStrategy registerTo: controller)
		editDistanceBetween: 'Morph' and: 'morph') equals: 0.5.
	self assert: ((ACStrategy registerTo: controller)
		editDistanceBetween: 'Morph' and: 'Morhp') equals: 1
	