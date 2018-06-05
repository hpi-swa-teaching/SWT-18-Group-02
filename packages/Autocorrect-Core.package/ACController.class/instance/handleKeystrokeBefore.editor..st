event handling
handleKeystrokeBefore: aKeyboardEvent editor: theEditor 
	"Returns a boolean. true when the event was handled and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	
	| ctrl cmd alphanum |
	
	"self editor: theEditor.
	self setModel: theEditor model."

	ctrl := aKeyboardEvent controlKeyPressed.
	cmd := aKeyboardEvent commandKeyPressed.
	alphanum := aKeyboardEvent keyCharacter isAlphaNumeric.
	
	self isMenuOpen 
		ifTrue: [menuMorph stillActive].
	
	(ctrl not & cmd not & alphanum) 
		ifTrue: [^ self autocorrect: aKeyboardEvent in: theEditor]
		ifFalse: [^ self handleControlEvent: aKeyboardEvent editor: theEditor]
	
	