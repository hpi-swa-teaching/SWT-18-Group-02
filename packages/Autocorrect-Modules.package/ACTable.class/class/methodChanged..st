as yet unclassified
methodChanged: event
	event isRemoved ifTrue: [^self].
	event isRecategorized ifTrue: [^self].
	self default justCompiled: event itemSelector in: event itemClass.