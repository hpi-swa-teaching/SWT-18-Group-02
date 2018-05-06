testcases
testGetListOfCorrectType 

	self assert: (self corrector getListOfType: #SimpleList) 
		class equals: ACSimpleList 