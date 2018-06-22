private
computeReceiverClass
	self recurseCount: 0.
	self receiverType = #cascade
		ifTrue: [^self guessCascadeReceiver: self completionIndex - 1].
	self receiverType = #object 
		ifTrue: [^self guessTypeOf: self  completionIndex - 2].
	^self guessTypeOf: self  completionIndex - 1