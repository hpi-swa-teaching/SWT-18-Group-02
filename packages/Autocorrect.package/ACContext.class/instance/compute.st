private
compute
	
	completionIndex := self computeIndexOfPosition.
	receiverType := self computeReceiverType.
	({#cascade . #object . #class} asOrderedCollection includes: receiverType)
		ifTrue: [	receiverClass := self computeReceiverClass]