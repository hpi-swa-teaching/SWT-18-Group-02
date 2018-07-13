keyHandling
handleKeystrokeBefore: aKeyboardEvent editor: theEditor 
	"Returns a boolean. true when the event was handled and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	
	| ctrl cmd alphanum |

	ctrl := aKeyboardEvent controlKeyPressed.
	cmd := aKeyboardEvent commandKeyPressed.
	alphanum := aKeyboardEvent keyCharacter isAlphaNumeric.
	
	self isMenuOpen 
		ifTrue: [self menuMorph stillActive].
	
	(ctrl not & cmd not & alphanum) 
		ifTrue: [ 
			theEditor text ifEmpty: [^ false].  
			theEditor selection ifNotEmpty: [theEditor replaceSelectionWith: ''].
			self initializeContextFor: theEditor.
			self acmodel narrowString: (theEditor wordAtCaret , aKeyboardEvent keyCharacter).
			"still need to re-open it, otherwise the handleKeystrokeAfter: will not do anything"
			self context autocorrectionDisabled 
				ifFalse: [self isMenuOpen ifFalse: [ self openMenuFor: theEditor]].
			^ false]
		ifFalse: [	
			^ self handleControlEvent: aKeyboardEvent editor: theEditor]
	
	