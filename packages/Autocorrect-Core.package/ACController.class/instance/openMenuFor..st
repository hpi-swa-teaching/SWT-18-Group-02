UI
openMenuFor: anEditor

	| theMenu |

	self closeMenu.
	self editor: anEditor.
	theMenu := self menuMorphClass
		controller: self
		position: (anEditor selectionPosition: acmodel completionToken).
	theMenu model: self acmodel.
	theMenu open.
	menuMorph := theMenu