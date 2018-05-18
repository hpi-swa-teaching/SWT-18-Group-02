UI
openXMenuFor: anEditor 
	| theMenu |
	self closeMenu.
	self editor: anEditor.
	self expand.
	theMenu := self menuMorph controller: self
				position: (anEditor selectionPosition: acmodel completionToken).
	theMenu model: self acmodel.
	theMenu open.
	menuMorph := theMenu.
	menuMorph moveDown; moveDown. 
	