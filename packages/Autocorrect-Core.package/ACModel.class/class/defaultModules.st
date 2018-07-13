accessing
defaultModules

	DefaultModules ifNil: 
		[self defaultModules: {ACSmartStrategy}].
	^ DefaultModules