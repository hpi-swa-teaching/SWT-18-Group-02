as yet unclassified
adviceNextAction

		
	self receiverType = #newStatement 
		ifTrue: [	^#calculateForNewStatement]
		ifFalse: [^#calculateWithSuggestions].
	