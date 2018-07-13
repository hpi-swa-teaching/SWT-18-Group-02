event handling
handleKeystrokeAfter: aKeyboardEvent editor: anEditor 
|keyValue del|
	keyValue := aKeyboardEvent keyValue.
	del := keyValue = 8.
	(anEditor isNil or:[self isMenuOpen not]) ifTrue:[^self].
	((anEditor wordAtCaret = '') | (anEditor wordAtCaret = ' ')) ifTrue: 
	[ self retract.
	^ self closeMenu].
	self model: anEditor model.
	self context narrowWith: anEditor wordAtCaret.
	self acmodel narrowString: anEditor wordAtCaret.
	"self autocorrectIn: anEditor"
	
	self defferAutocorrect.
	del
		ifTrue: [
			(self future: self correctionDelayAfterDelete) tryAutocorrect: anEditor.
			self closeMenu.
			]
	ifFalse:[self autocorrectIn: anEditor]