keyboard
handleKeystrokeAfter: aKeyboardEvent editor: anEditor 
	(anEditor isNil or: [self isMenuOpen not]) 
		ifTrue: [^ self].

	self acmodel context narrowWith: anEditor wordAtCaret