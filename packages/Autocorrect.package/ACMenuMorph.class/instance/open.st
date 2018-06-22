as yet unclassified
open

	| model |
	self selected: 0.
	self firstVisible: 1.
	model := self model.
	model notEmpty ifTrue: [self selected: 1].
	self show.
	self openInWorld 