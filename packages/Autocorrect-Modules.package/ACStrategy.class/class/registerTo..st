as yet unclassified
registerTo: aController
	|strategy|

	strategy := self new.
	strategy controller: aController.
	aController addStrategy: strategy.
	^ strategy