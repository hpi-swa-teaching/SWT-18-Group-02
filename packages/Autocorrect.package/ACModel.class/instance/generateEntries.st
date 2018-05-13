as yet unclassified
generateEntries
	| result suggestions |

	suggestions := self controller getSuggestionsFor: narrowString.
	result := OrderedCollection new.	
	suggestions
		do: [:suggestion |
			result add: (ODatedEntry contents: suggestion key type: #selector)].
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