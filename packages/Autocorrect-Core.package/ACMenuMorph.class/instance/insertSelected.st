as yet unclassified
insertSelected
	self model isEmpty ifTrue: [^ false].
	self insertCompletion: (self model completionAt: self selected).
	self delete.
	^ true