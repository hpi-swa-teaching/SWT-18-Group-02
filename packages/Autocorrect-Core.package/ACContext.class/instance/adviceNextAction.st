interface
adviceNextAction
	self receiverType = #newStatement 
		ifTrue: [	^#calculateForNewStatement]
		ifFalse: [^#calculateWithSuggestions].
	