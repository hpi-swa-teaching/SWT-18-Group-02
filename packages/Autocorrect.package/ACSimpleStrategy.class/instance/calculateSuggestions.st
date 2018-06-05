initialize-release
calculateSuggestions
	|counter subString|
	self suggestions removeAll.
	counter := 0.
	[self suggestions isEmpty] whileTrue:[ 
		subString := (requested first:((requested size) - counter)).
		subString first isUppercase 
			ifFalse:[self suggestions: (self defaultStrategy getSuggestionsFor: subString)] 
			ifTrue:[self suggestions: (self classesStrategy getSuggestionsFor: subString)].
		counter := counter + 1].