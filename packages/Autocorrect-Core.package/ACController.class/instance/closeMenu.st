UI
closeMenu
	self menuMorph ifNotNil: [
		self menuMorph delete.
		self menuMorph: nil ]