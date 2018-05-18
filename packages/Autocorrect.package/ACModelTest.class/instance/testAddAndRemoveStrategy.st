testcases
testAddAndRemoveStrategy 
	|strategiesBeforeTest|
	
	strategiesBeforeTest := model strategies.
	model addStrategy: #abc.
	self assert: (model strategies includes: #abc).
	
	model removeStrategy: #abc.
	self assert: (model strategies) equals: strategiesBeforeTest