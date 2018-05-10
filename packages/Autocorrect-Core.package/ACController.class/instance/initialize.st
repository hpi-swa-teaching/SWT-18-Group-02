initialization
initialize 
	strategies := Set new.
	self class defaultModules do: [
		:module | module registerTo: self].
	contextClass := ACContext.
	^ self