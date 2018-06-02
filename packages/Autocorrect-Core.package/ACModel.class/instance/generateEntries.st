as yet unclassified
generateEntries
	| result suggestions alreadyAdded|
	
	(self context receiverClass = nil) ifFalse: [
		^ self generateTypedEntries].
	suggestions := self getSuggestionsFor: narrowString.
	alreadyAdded := Set new.
	result := OrderedCollection new.	
	suggestions
		do: [:suggestion |
			(alreadyAdded includes: suggestion suggestion) ifFalse: [
				alreadyAdded add: suggestion suggestion.
				result add: (ODatedEntry contents: suggestion suggestion type: #selector)]].
	entries := result.
	^ result

	"|testEntry1 testEntry2 testEntry3 result|

	testEntry1 := ODatedEntry contents: #ACToolSet type: #selector.
	testEntry1 
		next: testEntry1;
		previous: testEntry1;
		date: DateAndTime now.
	testEntry2 := ODatedEntry contents: #ACModel type: #selector.
	testEntry3 := ODatedEntry contents: #ACController type: #selector.
	result := {testEntry1 . testEntry2 . testEntry3} asOrderedCollection.
	entries := result.
	
	^ result"