as yet unclassified
testDefaultModuleDeployment
	|allIncluded|
	
	allIncluded := true.
	self controller strategies do: [ 
			:module | 
			(ACController defaultModules includes: (module class)) ifFalse: [allIncluded := false]].
	self assert: allIncluded
	