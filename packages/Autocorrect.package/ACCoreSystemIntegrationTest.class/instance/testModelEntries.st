as yet unclassified
testModelEntries

	self assert: true
	"this test may be useful later on, but is bugged based on the system at the moment"
	
	"|targetCollection model controller counter entries |
	targetCollection := {#Morph . #morph . #morphsAt:} asOrderedCollection.
	controller := ACController new.
	model := controller context model.
	model controller: controller.
	model narrowString: 'Mor'.
	model generateEntries.
	entries := model entries.
	Transcript show: entries.
	counter := 1.
	targetCollection do: [
		:content |
		self assert: content asLowercase equals: (entries at: counter) contents asLowercase.
		self assert: (model entries at: counter) class equals: ODatedEntry.
		counter := counter+1]."