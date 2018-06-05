event handling
autocorrect: aKeyboardEvent in: theEditor
self closeMenu.
			theEditor text ifEmpty: [^ false].  
			theEditor selection ifNotEmpty: [theEditor replaceSelectionWith: ''].
			self acmodel initializeContextFor: theEditor.
			self acmodel narrowString: (theEditor wordAtCaret , aKeyboardEvent keyCharacter).
			self acmodel generateEntries.
			
			self isMenuOpen ifFalse: [ self openMenuFor: theEditor].
			theEditor text ifNotNil: [ menuMorph changed ]. 
			^ false