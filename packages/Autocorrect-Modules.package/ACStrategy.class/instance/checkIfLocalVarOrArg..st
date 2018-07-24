context-handling
checkIfLocalVarOrArg: aString
	^ (self context currentlyRelevant includes: aString)