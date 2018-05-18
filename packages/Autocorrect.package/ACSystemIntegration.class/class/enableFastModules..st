preference
enableFastModules: aBoolean
	enableFastModules := aBoolean.

	aBoolean ifTrue:[ ACController defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault}]
			ifFalse: [ ACController  defaultModules: {ACStrategyCompletionClasses  . ACStrategyCompletionDefault . ACSuperSlowStrategy}]