as yet unclassified
testSelectedEntry
	| model counter |
	
	model := ACModel new.
	model entries: {Morph . ACController . ACMenuMorph} asOrderedCollection.
	
	self menu model: model.
	self menu show.
	
	self assert: self menu selected notNil.
	self menu selected: 2.
	self assert: 2 equals: (self menu selected).
	self menu selected: 4.
	self assert: 2 equals: (self menu selected).
	
	counter := 1.
	model entries do: [ :entry |
		self menu selected: counter.
		self assert: entry equals: (self menu selectedEntry).
		counter := counter + 1]
	
