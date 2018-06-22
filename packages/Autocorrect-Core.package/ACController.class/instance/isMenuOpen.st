UI
isMenuOpen
	^self menuMorph notNil and: [self menuMorph itemsCount > 0 ifTrue: [true] ifFalse: [self closeMenu. false]]