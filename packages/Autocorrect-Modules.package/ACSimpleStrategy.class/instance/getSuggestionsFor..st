initialize-release
getSuggestionsFor: aString
	|counter subString|
	counter := 0.
	[self suggestions isEmpty] whileTrue:[ 
		subString := (aString first:((aString size) - counter)).
		subString first isUppercase 
			ifFalse:[self suggestions: (self defaultStrategy getSuggestionsFor: subString)] 
			ifTrue:[self suggestions: (self classesStrategy getSuggestionsFor: subString)].
		counter := counter + 1].
	^ self suggestions