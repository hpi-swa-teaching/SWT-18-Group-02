as yet unclassified
registerTo: aModel
	|strategy|

	strategy := self new.
	strategy model: aModel.
	aModel addStrategy: strategy.
	
	^ strategy