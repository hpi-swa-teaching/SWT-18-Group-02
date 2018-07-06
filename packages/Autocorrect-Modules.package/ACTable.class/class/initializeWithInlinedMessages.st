as yet unclassified
initializeWithInlinedMessages
	| entry |
	#(ifTrue: ifFalse: whileTrue: whileFalse: ifNil: ifNotNil: to:do: at:put: next: next size atEnd class value value: do: new: new) 
		do: [:e | 
			entry := ACDatedEntry contents: e asString date: DateAndTime now.
			self default addEntry: entry].