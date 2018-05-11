as yet unclassified
entries
	| result|

	result := self controller getSuggestionsFor: 'Mor'.
	entries := result.
	
	^ result