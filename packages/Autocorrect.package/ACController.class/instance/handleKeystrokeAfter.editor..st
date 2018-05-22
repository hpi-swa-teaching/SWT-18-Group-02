keyboard
handleKeystrokeAfter: aKeyboardEvent editor: anEditor 
	(anEditor isNil or:[self isMenuOpen not]) ifTrue:[^self].
	((anEditor wordAtCaret = '') | (anEditor wordAtCaret = ' ')) ifTrue: 
	[ self retract.
	^ self closeMenu].
	self setModel: anEditor model.
			self acmodel context narrowWith: anEditor wordAtCaret.
			self acmodel narrowString: anEditor wordAtCaret.
			self acmodel generateEntries.
			self openMenuFor: anEditor.		