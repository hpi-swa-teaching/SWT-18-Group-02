private
computeReceiverType
	| previous found |
	recurseCount := 0.
	((completionIndex = 1) or: 
		[(ranges at: completionIndex - 1) type = #statementSeparator]) 
			ifTrue: [^#newStatement].
	found := self checkImpossibleReceiver.
	found ifTrue: [^#impossibleReceiver].
	previous := ranges at: completionIndex - 1.
	previous type = #cascadeSeparator 
		ifTrue: [^#cascade].
	(previous type = #unary 
		and: [(self sourceOf: previous) = 'new' and: [completionIndex > 2]]) 
			ifTrue: 
				[previous := ranges at: completionIndex - 2.
				previous type = #globalVar 
					ifTrue: [^#object]
					ifFalse: 
						[self configureSelectorsOnly .
						^#selector]].
	^#class