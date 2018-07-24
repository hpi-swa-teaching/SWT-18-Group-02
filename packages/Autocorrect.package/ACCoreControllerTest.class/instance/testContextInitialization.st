as yet unclassified
testContextInitialization
	self assert: self controller context notNil.
	self assert: ACContext equals: self controller context class