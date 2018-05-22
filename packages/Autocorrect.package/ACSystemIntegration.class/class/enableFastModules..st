preference
enableFastModules: aBoolean
	enableFastModules := aBoolean.
	
	aBoolean ifTrue:[ ACModel defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . ACSlowStrategy}]
			ifFalse: [ ACModel  defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . ACRatherSlowStrategy}]