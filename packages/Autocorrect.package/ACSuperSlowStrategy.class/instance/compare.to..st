as yet unclassified
compare: firstString to: secondString
	|aSet dif|
	firstString size >= secondString size ifTrue: [^ self editDistanceBetween: firstString and: secondString].
	dif := secondString size - firstString size.
	aSet := Set new.
	(1 to: dif) do: [:i |
		aSet add: (self editDistanceBetween: firstString and: (secondString copyFrom: i to: i + firstString size))].
	^ aSet min