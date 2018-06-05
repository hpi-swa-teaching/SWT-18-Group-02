private
computeReceiverClass
	recurseCount := 0.
	receiverType = #cascade
		ifTrue: [^self guessCascadeReceiver: completionIndex - 1].
	receiverType = #object 
		ifTrue: [^self guessTypeOf: completionIndex - 2].
	^self guessTypeOf: completionIndex - 1