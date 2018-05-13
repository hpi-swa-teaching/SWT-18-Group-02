as yet unclassified
entries
	| result|

	result := self controller getSuggestionsFor: narrowString.
	entries := result.
	
	^ result