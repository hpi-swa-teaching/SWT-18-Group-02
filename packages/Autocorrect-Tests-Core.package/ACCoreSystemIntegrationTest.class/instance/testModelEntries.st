as yet unclassified
testModelEntries
	|targetCollection model counter|
	targetCollection := {#ACToolSet . #ACModel . #ACController} asOrderedCollection.
	model := ACModel new.
	counter := 1.
	targetCollection do: [
		:content |
		self assert: content equals: (model entries at: counter) contents.
		self assert: (model entries at: counter) class equals: ODatedEntry.
		counter := counter+1].