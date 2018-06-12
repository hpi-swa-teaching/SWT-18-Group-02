context-handling
checkIfLocalVarOrArg: aString

	^ (context currentlyRelevant includes: aString)