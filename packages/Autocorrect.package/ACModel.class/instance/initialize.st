initialization
initialize 
	super initialize.
	strategies := Set new.
	lookupTables := Dictionary new.
	self class defaultModules do: [
		:module | module registerTo: self].
	contextClass := ACContext.
	^ self