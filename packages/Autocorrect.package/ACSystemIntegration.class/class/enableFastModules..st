preference
enableFastModules: aBoolean
	enableFastModules := aBoolean.
	
	aBoolean ifTrue:[ ACModel defaultModules: {ACSmartStrategy}]
			ifFalse: [ ACModel  defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . ACRatherSlowStrategy}]