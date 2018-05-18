keyboard
handleKeystrokeBefore: kbEvent editor: theEditor 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	| keyValue ctrl cmd alphanum |
	self editor: theEditor.
	self setModel: theEditor model.
	keyValue := kbEvent keyValue.
	ctrl := kbEvent controlKeyPressed.
	cmd := kbEvent commandKeyPressed.
	alphanum := kbEvent keyCharacter isAlphaNumeric.

	(ctrl not & cmd not & alphanum) 
		ifTrue: [ 
			self closeMenu.
			theEditor text ifEmpty: [^ false].  
			theEditor selection ifNotEmpty: [theEditor replaceSelectionWith: ''].
			self acmodel initializeContextFor: theEditor.
			self acmodel narrowString: theEditor wordAtCaret.
			self acmodel generateEntries.
			
			self isMenuOpen ifFalse: [ self openMenuFor: theEditor].
			theEditor text ifNotNil: [ menuMorph changed ]. 
			^ false].
		^ super handleKeystrokeBefore: kbEvent editor: theEditor
	
	