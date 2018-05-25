UI
retract
	expanded := false.
	(self model isKindOf: OModel) ifTrue: [self model contract]