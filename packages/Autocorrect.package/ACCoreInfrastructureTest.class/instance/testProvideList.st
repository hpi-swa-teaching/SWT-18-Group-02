testcases
testProvideList 

	self assert: (self controller getListOfType: #SimpleList) class equals: ACSimpleList 