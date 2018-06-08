as yet unclassified
defaultModules

	DefaultModules ifNil: 
		[self defaultModules: {ACSmartStrategy}].
	^ DefaultModules