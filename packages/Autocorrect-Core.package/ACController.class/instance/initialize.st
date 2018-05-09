initialization
initialize 
	strategies := Bag new.
	ACStrategyCompletionDefault registerTo: self.
	ACStrategyCompletionClasses registerTo: self.
	^ self