testcases
testAddAndRemoveStrategy 
	
	self corrector addStrategy: #abc.
	self assert: (self corrector strategies includes: #abc).
	
	self corrector removeStrategy: #abc.
	self assert: (self corrector strategies isEmpty)