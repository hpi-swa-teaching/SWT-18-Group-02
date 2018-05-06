testcases
testCalcCorrectionForMessages
	|expectedSet counter wrongInputs correctSubstrings|
	wrongInputs := {'ifTuer:' . 'ifFlase:' . 'alkie:'} asOrderedCollection.
	correctSubstrings := {'ifT' . 'ifF' . 'al'} asOrderedCollection.
	counter := 1.
	[counter <= wrongInputs size] whileTrue: [
		expectedSet := (OCompletionTable default entriesMatching: 
			(correctSubstrings at: counter)) asSet.
		self assert: expectedSet equals: (corrector calcCorrection: (wrongInputs at: counter)).
		counter := counter + 1].
	