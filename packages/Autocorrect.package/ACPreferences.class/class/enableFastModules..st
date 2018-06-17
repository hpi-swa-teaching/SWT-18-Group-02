enabling/disabling
enableFastModules: aBoolean
	enableFastModules := aBoolean.
	
	aBoolean ifTrue:[ ACModel defaultModules: {ACExtendedStrategy}]
			ifFalse: [ ACModel  defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . ACRatherSlowStrategy}]