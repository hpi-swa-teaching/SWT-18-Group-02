as yet unclassified
narrowCompletion
	self selected: 0.
	firstVisible := 1.
	self model narrowWith: self model completionToken.
	self model notEmpty ifTrue: [self selected: 1].
	self show.
	^ true