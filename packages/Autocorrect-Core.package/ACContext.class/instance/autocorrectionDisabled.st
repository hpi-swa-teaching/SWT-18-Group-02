as yet unclassified
autocorrectionDisabled
	| currentType |
	
	currentType := (ranges at: completionIndex) type.
	^ {#comment . #unfinishedComment . #string . #unfinishedString . #symbol . #patternTempVar . #excessCode . #blockPatternArg . #blockArgColon} asOrderedCollection includes: currentType