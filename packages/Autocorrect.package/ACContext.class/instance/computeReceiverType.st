computation
computeReceiverType
	| previous found |
	self recurseCount: 0.
	(self currentlyNewStatement) 
		ifTrue: [^#newStatement].
	found := self checkImpossibleReceiver.
	found ifTrue: [^#impossibleReceiver].
	previous := self ranges at: self completionIndex - 1.
	previous type = #cascadeSeparator 
		ifTrue: [^#cascade].
	(previous type = #unary 
		and: [(self sourceOf: previous) = 'new' and: [self completionIndex > 2]]) 
			ifTrue: 
				[previous := self ranges at: self completionIndex - 2.
				previous type = #globalVar 
					ifTrue: [^#object]
					ifFalse: 
						[self configureSelectorsOnly .
						^#selector]].
	previous type = #tempVar
		ifTrue: [ ^ #tempVar].
	
	^#class