testcases
testSimpleStrategyGetSuggestionsFor

	self assert: ACSimpleStrategy corrects: 'Mor' to: 'Morph'.
	self assert: ACSimpleStrategy corrects: 'Moroh' to: 'Morph'.
	self assert: ACSimpleStrategy corrects: 'ifTure' to: 'ifTrue:'
	