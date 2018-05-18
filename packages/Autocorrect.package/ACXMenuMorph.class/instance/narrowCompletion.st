actions
narrowCompletion
	self selected: 0.
	firstVisible := 1.
	self model narrowWith: self model completionToken.
	self model notEmpty ifTrue: [self selected: 1].
	self model entries size < self selected ifTrue: [self selected: self model entries size].
	self show.
	^ true