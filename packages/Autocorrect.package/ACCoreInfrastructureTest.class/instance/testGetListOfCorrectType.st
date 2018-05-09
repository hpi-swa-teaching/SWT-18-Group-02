testcases
testGetListOfCorrectType 

	self assert: (self controller getListOfType: #SimpleList) 
		class equals: ACSimpleList 