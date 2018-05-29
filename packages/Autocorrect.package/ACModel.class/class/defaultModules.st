as yet unclassified
defaultModules

	DefaultModules ifNil: 
		[self defaultModules: {ACStrategyCompletionClasses . ACStrategyCompletionDefault . ACSmartStrategy }].
	^ DefaultModules