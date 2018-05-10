testcases
testAddAndRemoveStrategy 
	|strategiesBeforeTest|
	
	strategiesBeforeTest := self controller strategies.
	self controller addStrategy: #abc.
	self assert: (self controller strategies includes: #abc).
	
	self controller removeStrategy: #abc.
	self assert: (self controller strategies) equals: strategiesBeforeTest