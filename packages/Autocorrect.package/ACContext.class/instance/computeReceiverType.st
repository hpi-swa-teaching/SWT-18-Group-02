private
computeReceiverType
	| previous found |
	recurseCount := 0.
	(self currentlyNewStatement) 
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
	previous type = #tempVar
		ifTrue: [ ^ #tempVar].
	
	^#class