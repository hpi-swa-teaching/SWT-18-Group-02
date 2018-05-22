as yet unclassified
defaultModules

	defaultModules ifNil: 
		[self defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . 			ACSuperSlowStrategy}].
	^ defaultModules