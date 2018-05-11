as yet unclassified
testModelEntries
	|targetCollection model controller counter entries |
	targetCollection := {#morph . #Morph . #morphsAt:} asOrderedCollection.
	controller := ACController new.
	model := controller context model.
	model controller: controller.
	entries := model entries.
	counter := 1.
	targetCollection do: [
		:content |
		self assert: content equals: (entries at: counter) key.
		self assert: (model entries at: counter) class equals: Association.
		counter := counter+1].