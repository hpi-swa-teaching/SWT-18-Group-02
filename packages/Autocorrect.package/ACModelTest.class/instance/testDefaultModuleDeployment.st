testcases
testDefaultModuleDeployment
	|allIncluded|
	
	allIncluded := true.
	self model strategies do: [ 
			:module | 
			(ACModel defaultModules includes: (module class)) ifFalse: [allIncluded := false]].
	self assert: allIncluded
	