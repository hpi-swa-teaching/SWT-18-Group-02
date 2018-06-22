initialize-release
calculateSuggestions
	|counter subString|
	self suggestions removeAll.
	counter := 0.
	[self suggestions isEmpty] whileTrue:[ 
		subString := (self requested first:((self requested size) - counter)).
		subString first isUppercase 
			ifFalse:[self suggestions: (self defaultStrategy calculateSuggestionsFor: subString)] 
			ifTrue:[self suggestions: (self classesStrategy calculateSuggestionsFor: subString)].
		counter := counter + 1].