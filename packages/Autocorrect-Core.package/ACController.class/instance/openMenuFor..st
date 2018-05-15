UI
openMenuFor: anEditor

	| theMenu |

	self closeMenu.
	self editor: anEditor.
	theMenu := self menuMorph
		controller: self
		position: (anEditor selectionPosition: context completionToken).
	theMenu open.
	menuMorph := theMenu