testcases
testContextInitialization
	
	self assert: model context notNil.
	self assert: ACContext equals: model context class