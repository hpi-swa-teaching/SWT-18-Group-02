testcases
testDefaultModuleDeployment
	|allIncluded|
	
	allIncluded := true.
	model strategies do: [ 
			:module | 
			(ACModel defaultModules includes: (module class)) ifFalse: [allIncluded := false]].
	self assert: allIncluded
	