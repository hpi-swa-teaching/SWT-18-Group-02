as yet unclassified
testContextCreateModel
 	"|context|
	context :=  ACContext 
		controller: ACController new
		class: nil
		source: 'test'
		position: 0.
	context model initialize.
	self assert: context model class equals: ACModel
		"