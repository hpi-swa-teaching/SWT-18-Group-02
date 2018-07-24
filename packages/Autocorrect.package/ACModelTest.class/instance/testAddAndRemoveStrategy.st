testcases
testAddAndRemoveStrategy 
	|strategiesBeforeTest|
	
	strategiesBeforeTest := self model strategies.
	self model addStrategy: #abc.
	self assert: (self model strategies includes: #abc).
	self model removeStrategy: #abc.
	self assert: (self model strategies) equals: strategiesBeforeTest