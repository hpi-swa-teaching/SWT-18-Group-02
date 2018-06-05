as yet unclassified
testContextInitialization
	
	self assert: controller context notNil.
	self assert: ACContext equals: controller context class