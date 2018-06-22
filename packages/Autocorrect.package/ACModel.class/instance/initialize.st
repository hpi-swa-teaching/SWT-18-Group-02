initialization
initialize 
	super initialize.
	self strategies: Set new.
	self lookupTables: Dictionary new.
	self class defaultModules do: [
		:module | module registerTo: self].
	^ self