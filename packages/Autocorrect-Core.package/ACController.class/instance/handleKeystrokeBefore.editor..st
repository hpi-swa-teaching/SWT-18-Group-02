keyboard
handleKeystrokeBefore: aKeyboardEvent editor: theEditor 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	| keyValue ctrl cmd alphanum tab enter colon del down esc up left right pageDown pageUp end home |
	"self editor: theEditor.
	self setModel: theEditor model."
	keyValue := aKeyboardEvent keyValue.
	ctrl := aKeyboardEvent controlKeyPressed.
	cmd := aKeyboardEvent commandKeyPressed.
	alphanum := aKeyboardEvent keyCharacter isAlphaNumeric.
	tab := aKeyboardEvent keyCharacter = Character tab.
	enter := aKeyboardEvent keyCharacter = Character cr.
	home := keyValue = 1.
	end := keyValue = 4.
	del := keyValue = 8.
	pageUp := keyValue = 11.
	pageDown := keyValue = 12.
	esc := keyValue = 27.
	left := keyValue = 28.
	right := keyValue = 29.
	up := keyValue = 30.
	down := keyValue = 31.
	colon := aKeyboardEvent keyCharacter = $:.

	self isMenuOpen 
		ifTrue: [menuMorph stillActive].

	"del ifTrue: [ self smartBackspace ]."
	"self expanded ifTrue: [ ^ super handleKeystrokeBefore: aKeyboardEvent editor: theEditor ]."
	
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
			^ false].
	
	self isMenuOpen 
		ifFalse: [^ false].
	
	esc 
		ifTrue: [self retract; closeMenu. ^ true].

	del
		ifTrue: [theEditor isCaretBehindChar not
					ifTrue: [self closeMenu].
				^ false].
		
	(tab and: [theEditor wordAtCaret notEmpty]) ifTrue: [
		(self acmodel notEmpty and: [menuMorph selected > 0]) 
				ifTrue: [menuMorph insertSelected 
					ifTrue: [ ^ true ] ]
				ifFalse: [enter 
					ifFalse: [self openXMenuFor: theEditor. ^true]]].	
				

	up & self isMenuOpen 
		ifTrue:  [menuMorph moveUp. ^ true]. 	
			
	down & self isMenuOpen 
		ifTrue: [
			menuMorph selected = 3 ifTrue: [self openXMenuFor: theEditor].
			menuMorph moveDown.
			^ true ].
		
	"home 
		ifTrue: [menuMorph home. ^ true].

	(end and: [ctrl not])
		ifTrue: [menuMorph end. ^ true]."
		
	(del and: [ctrl]) 
		ifTrue: [menuMorph help. ^true].

	(right and: [self expanded])
		ifTrue: [menuMorph showDetail. ^ true].

	(left and: [self expanded])
		ifTrue: [menuMorph hideDetail. ^ true].

	pageUp
		ifTrue: [menuMorph pageUp. ^ true].

	pageDown 
		ifTrue: [menuMorph pageDown. ^ true].


	"All keys but the alphanumeric chars (without command and control ) 
	and the backspace key do close the menu"
	(ctrl not and: [cmd not] and: [aKeyboardEvent keyCharacter isAlphaNumeric])
		ifFalse: [self closeMenu. ^ false].
		
	^ false
	
	