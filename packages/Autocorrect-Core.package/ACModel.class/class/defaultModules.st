as yet unclassified
defaultModules

	DefaultModules ifNil: 
		[self defaultModules: {ACStrategyCompletionClasses . ACStrategyCompletionDefault . ACSlowStrategy . ACSuperSlowStrategy . ACRatherSlowStrategy . ACSmartStrategy }].
	^ DefaultModules