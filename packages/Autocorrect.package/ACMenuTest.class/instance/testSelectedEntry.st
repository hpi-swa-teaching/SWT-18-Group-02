as yet unclassified
testSelectedEntry
	| model counter |
	
	model := ACModel new.
	model entries: {Morph . ACController . ACMenuMorph} asOrderedCollection.
	
	menu model: model.
	menu show.
	
	self assert: menu selected notNil.
	menu selected: 2.
	self assert: 2 equals: (menu selected).
	menu selected: 4.
	self assert: 2 equals: (menu selected).
	
	counter := 1.
	model entries do: [ :entry |
		menu selected: counter.
		self assert: entry equals: (menu selectedEntry).
		counter := counter + 1]
	
