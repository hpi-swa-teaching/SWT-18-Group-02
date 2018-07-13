as yet unclassified
autocorrectionDisabled
	| currentType |
	
	currentType := (self ranges at: self completionIndex) type.
	^ {#comment . #unfinishedComment . #string . #unfinishedString . #symbol . #patternTempVar . #excessCode . #blockPatternArg . #blockArgColon} asOrderedCollection includes: currentType