UI
closeMenu
	menuMorph ifNotNil: [
		menuMorph delete.
		menuMorph := nil ]