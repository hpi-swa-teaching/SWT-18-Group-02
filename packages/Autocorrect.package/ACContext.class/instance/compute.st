private
compute
	self completionIndex: self computeIndexOfPosition.
	self receiverType: self computeReceiverType.
	({#cascade . #object . #class} asOrderedCollection includes: self receiverType)
		ifTrue: [self receiverClass: self computeReceiverClass].
	self currentlyRelevant: self computeArgsAndLocalVars