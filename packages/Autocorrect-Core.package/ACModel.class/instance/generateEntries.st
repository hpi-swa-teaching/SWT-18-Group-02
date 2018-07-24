calculation
generateEntries
	| result suggestions alreadyAdded|
	
	suggestions := self getSuggestionsFor: self narrowString.
	alreadyAdded := Set new.
	result := OrderedCollection new.	
	suggestions
		do: [:suggestion |
			(alreadyAdded includes: suggestion suggestion) ifFalse: [
				alreadyAdded add: suggestion suggestion.
				result add: (ODatedEntry contents: suggestion suggestion type: #selector)]].
	self entries: result.
	
	^ result