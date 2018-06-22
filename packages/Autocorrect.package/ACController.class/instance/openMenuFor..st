UI
openMenuFor: anEditor

	| theMenu |

	self closeMenu.
	self editor: anEditor.
	theMenu := self menuMorphClass
		controller: self
		position: (anEditor selectionPosition: self completionToken).
	theMenu model: self acmodel.
	theMenu open.
	self menuMorph: theMenu