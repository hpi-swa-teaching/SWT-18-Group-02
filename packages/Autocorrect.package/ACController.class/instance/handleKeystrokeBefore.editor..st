keyboard
handleKeystrokeBefore: aKeyboardEvent editor: theEditor 
	"Returns a boolean. true when the event was handled and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	
	| ctrl cmd alphanum |
	self halt.
	
	"self editor: theEditor.
	self setModel: theEditor model."

	ctrl := aKeyboardEvent controlKeyPressed.
	cmd := aKeyboardEvent commandKeyPressed.
	alphanum := aKeyboardEvent keyCharacter isAlphaNumeric.
	
	self isMenuOpen 
		ifTrue: [menuMorph stillActive].
	
	(ctrl not & cmd not & alphanum) 
		ifTrue: [ 
			self closeMenu.
			theEditor text ifEmpty: [^ false].  
			theEditor selection ifNotEmpty: [theEditor replaceSelectionWith: ''].
			self acmodel initializeContextFor: theEditor.
			self acmodel narrowString: (theEditor wordAtCaret , aKeyboardEvent keyCharacter).
			self acmodel generateEntries.
			
			self isMenuOpen ifFalse: [ self openMenuFor: theEditor].
			theEditor text ifNotNil: [ menuMorph changed ]. 
			^ false]
		ifFalse: [	
			^ self handleControlEvent: aKeyboardEvent editor: theEditor]
	
	