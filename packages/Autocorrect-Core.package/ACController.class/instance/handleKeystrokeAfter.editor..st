keyboard
handleKeystrokeAfter: aKeyboardEvent editor: anEditor 
	(anEditor isNil or:[self isMenuOpen not]) ifTrue:[^self].
	self setModel: anEditor model.
			self acmodel narrowString: anEditor wordAtCaret.
			self acmodel generateEntries.
			self openMenuFor: anEditor		
			"menuMorph narrowCompletion"