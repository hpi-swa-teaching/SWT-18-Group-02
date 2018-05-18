keyboard
handleKeystrokeBefore: kbEvent editor: theEditor 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	| keyValue ctrl cmd alphanum tab enter down|
	self editor: theEditor.
	self setModel: theEditor model.
	keyValue := kbEvent keyValue.
	ctrl := kbEvent controlKeyPressed.
	cmd := kbEvent commandKeyPressed.
	tab := kbEvent keyCharacter = Character tab.
	enter := kbEvent keyCharacter = Character cr.
	alphanum := kbEvent keyCharacter isAlphaNumeric.
	down := keyValue = 31.
	
	((tab) and: [theEditor wordAtCaret notEmpty]) ifTrue: [
		(self acmodel notEmpty and: [menuMorph selected > 0]) 
				ifTrue: [menuMorph insertSelected ifTrue: [ ^ true ] ]
				ifFalse: [enter ifFalse: [self openXMenuFor: theEditor. ^true]]].	
				
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
		
	down & self isMenuOpen ifTrue: [
			
			menuMorph selected = 3 ifTrue: [self openXMenuFor: theEditor].
			menuMorph moveDown.
			^ true ].
	
		^ super handleKeystrokeBefore: kbEvent editor: theEditor
	
	