keyboard
handleControlEvent: aKeyboardEvent editor: theEditor
	"Returns a boolean. true when the event was handled and no futher processing is needed by the caller."
	
	| keyValue ctrl cmd tab enter colon del down esc up left right pageDown pageUp end home space lastIndex |
		
	keyValue := aKeyboardEvent keyValue.
	ctrl := aKeyboardEvent controlKeyPressed.
	cmd := aKeyboardEvent commandKeyPressed.
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
	space := keyValue = 32.
	colon := aKeyboardEvent keyCharacter = $:.

	(cmd and: [aKeyboardEvent keyCharacter  = $z] and: [theEditor history previous notNil] and: [theEditor history previous type = #Autocorrection])
		ifTrue: [theEditor undo. 
				lastIndex :=  theEditor history previous intervalBetween last + 1. 
				theEditor selectInterval: (lastIndex to: lastIndex - 1).
				^true].
		
	self isMenuOpen
		ifFalse: [^ false].
		
	"del ifTrue: [ self smartBackspace ]."
	"self expanded ifTrue: [ ^ super handleKeystrokeBefore: aKeyboardEvent editor: theEditor ]."
	
	esc 
		ifTrue: [self retract; closeMenu. ^ true].

	del
		ifTrue: [theEditor isCaretBehindChar not
					ifTrue: [self closeMenu].
				^ false].
		
	(tab and: [theEditor wordAtCaret notEmpty] and: [ACPreferences enableTabInsertion]) ifTrue: [
		(self acmodel notEmpty and: [menuMorph selected > 0]) 
				ifTrue: [menuMorph insertSelected 
					ifTrue: [ ^ true ] ]
				ifFalse: [enter 
					ifFalse: [self openXMenuFor: theEditor. ^true]]].	

	up
		ifTrue:  [menuMorph moveUp. ^ true]. 	
			
	down
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

	(space and:  [ACPreferences spaceCorrection])
		ifTrue: [	menuMorph insertSelected.
				 ^true].
	
	(enter and: [ACPreferences enableEnterInsertion] and: [theEditor wordAtCaret notEmpty])
		 ifTrue: [(self acmodel notEmpty and: [menuMorph selected > 0]) 
				ifTrue: [menuMorph insertSelected 
					ifTrue: [ ^ true ]]].

	(colon | up | down | tab | del) 
		ifFalse: [self retract; closeMenu. ^ false].
		
	^ false
