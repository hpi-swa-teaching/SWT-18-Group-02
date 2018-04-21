testcases
testCalcCorrectionForClasses
	|expectedSet counter wrongInputs correctSubstrings|
	wrongInputs := {'Mophr' . 'AutoCorractionTists' . 'Objrct'} asOrderedCollection.
	correctSubstrings := {'Mo' . 'AutoCorr' . 'Obj'} asOrderedCollection.
	counter := 1.
	[counter <= wrongInputs size] whileTrue: [
		expectedSet := (OCompletionTable classes entriesMatching: 
			(correctSubstrings at: counter)) asSet.
		self assert: expectedSet equals: (corrector calcCorrection: (wrongInputs at: counter)).
		counter := counter + 1].

	