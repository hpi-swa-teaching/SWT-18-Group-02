as yet unclassified
adviceNextAction

		
	receiverType = #newStatement 
		ifTrue: [	^#calculateForNewStatement]
		ifFalse: [^#calculateWithSuggestions].
	